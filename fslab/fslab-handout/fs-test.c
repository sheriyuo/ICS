/*
Filesystem Lab disigned and implemented by Liang Junkai,RUC
*/

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <time.h>
#include <fuse.h>
#include <errno.h>
#include "disk.h"

#define DIRMODE (S_IFDIR | 0755)
#define REGMODE (S_IFREG | 0644)

#define FILE_NODE 32768
#define FILE_NAME 31
#define INDIRECT_SIZE 1023
#define BITMAP_SIZE 1024
#define DIRECT_POINTER 12

#define SUPER_BLOCK 0
#define INODE_BITMAP 1
#define DATA_BITMAP_1 2
#define DATA_BITMAP_2 3
#define INODE_START 4
#define INODE(x) (INODE_START + x)
#define ROOT_NODE 0

#define BIT_PER_INT 32
#define INODE_PER_BLOCK (BLOCK_SIZE / sizeof(INode))
#define FILE_PER_BLOCK (BLOCK_SIZE / sizeof(File))
#define DATA_BLOCK_START (FILE_NODE / INODE_PER_BLOCK + 5)
#define DATA(x) (DATA_BLOCK_START + x)
#define BLK(x) (x / INODE_PER_BLOCK)
#define OFFSET(x) (x % INODE_PER_BLOCK)

typedef struct SuperBlock {
	unsigned long blockSize, fileName;
	fsblkcnt_t blockNum, fileNode, freeBlock, freeNode;
} SuperBlock;

typedef struct INode {
	mode_t mode;
	size_t size;
	time_t atime, mtime, ctime;
	int blockNum, block[DIRECT_POINTER], indirect[2];
} INode;

typedef struct File {
	int node;
	char name[FILE_NAME];
} File;

typedef struct Directory {
	int size;
	File file[FILE_PER_BLOCK];
} Directory;

typedef int Bitmap[BITMAP_SIZE];

static char tmp[BLOCK_SIZE + 1], _path[BLOCK_SIZE + 1];
static int ptr[BLOCK_SIZE + 1], data[BLOCK_SIZE + 1];

SuperBlock readSuperBlock() {
	disk_read(SUPER_BLOCK, tmp);
	return *(SuperBlock *)tmp;
}

void writeSuperBlock(SuperBlock blk) {
	char *ptr = (char *)(&blk);
	memcpy(tmp, ptr, BLOCK_SIZE);
	disk_write(SUPER_BLOCK, tmp);
}

void modifySuperBlock(int freeNode, int freeBlock) {
	SuperBlock superBlock = readSuperBlock();
	superBlock.freeNode += freeNode;
	superBlock.freeBlock += freeBlock;
	writeSuperBlock(superBlock);
}

int findFree(int start) {
	Bitmap bitmap;
	disk_read(start, bitmap);
	for (int i = 0; i < BITMAP_SIZE; i++) {
		int S = bitmap[i];
		for (int j = 0; j < BIT_PER_INT; j++) {
			if ((S >> j) & 1)
				continue;
			bitmap[i] |= 1 << j;
			disk_write(start, bitmap);
			if (start == INODE_START)
				modifySuperBlock(-1, 0);
			else
				modifySuperBlock(0, -1);
			return i * BIT_PER_INT + j;
		}
	}
	return -1;
}

int findFreeBlock() {
	int node = findFree(DATA_BITMAP_1);
	if (node == -1)
		node = findFree(DATA_BITMAP_2);
	return node;
}

void readDirectory(int num, Directory *dir) {
	disk_read(DATA(num), tmp);
	memcpy(dir, tmp, BLOCK_SIZE);
}

void initINode(INode *node, mode_t mode) {
	node->mode = mode;
	node->atime = node->mtime = node->ctime = time(NULL);
	node->indirect[0] = node->indirect[1] = -1;
	node->blockNum = node->size = 0;
}

INode getINodeByNum(int num) {
	disk_read(INODE(BLK(num)), tmp);
	INode *node = (INode *)tmp;
	return node[OFFSET(num)];
}

int initIndirect(INode *node, int i) {
	if (node->indirect[i] == -1) {
		int blk = findFreeBlock();
		if (blk == -1) 
			return -1;
		node->indirect[i] = blk;
		disk_read(DATA(blk), tmp);
		memset(tmp, 0, sizeof(tmp));
		disk_write(DATA(blk), tmp);
	}
	return 0;
}

void readIndirect(INode node, int *data, int i) {
	int ind = node.indirect[i];
	initIndirect(&node, i);
	disk_read(DATA(ind), tmp);
	memcpy(data, tmp, BLOCK_SIZE);
}

int getNumByName(int fNum, const char* name) {
	printf("getNumByName is called: fNum %d, name %s\n", fNum, name);
	if (fNum == -1)
		return -1;
	INode fa = getINodeByNum(fNum);
	// find inode in direct pointers
	for (int i = 0; i < fa.blockNum; i++) {
		int num = fa.block[i];
		Directory *dir = (Directory *)tmp;
		readDirectory(num, dir);
		for (int j = 0; j < dir->size; j++) {
			File file = dir->file[j];
			if (!strcmp(file.name, name))
				return file.node;
		}
	}
	// find inode in indirect pointers
	printf("find inode in Indirect %d %d\n", fa.indirect[0], fa.indirect[1]);
	for (int i = 0; i < 2; i++) {
		readIndirect(fa, ptr, i);
		for (int j = 1; j <= ptr[0]; j++) {
			int num = ptr[j];
			Directory *dir = (Directory *)tmp;
			readDirectory(num, dir);
			for (int k = 0; k < dir->size; k++) {
				File file = dir->file[k];
				if (!strcmp(file.name, name))
					return file.node;
			}
		}
	}
	return -1;
}

void removeData(int num) {
	if (num == -1)
		return;
	printf("removeData is called: %d\n", num);
	int pos = num / (BIT_PER_INT * BITMAP_SIZE) + DATA_BITMAP_1;
	num %= (BIT_PER_INT * BITMAP_SIZE);
	disk_read(pos, tmp);
	int *bitmap = (int *)tmp;
	bitmap[BLK(num)] &= ~(1 << OFFSET(num));
	disk_write(pos, bitmap);
	modifySuperBlock(0, 1);
}

void removeINode(INode node, int num) {
	for (int i = 0; i < node.blockNum; i++)
		removeData(node.block[i]);

	for (int i = 0; i < 2; i++) {
		if (node.indirect[i] == -1)
			continue;
		readIndirect(node, ptr, i);
		for (int j = 1; j <= ptr[0]; j++)
			removeData(ptr[j]);
	}

	disk_read(INODE_BITMAP, tmp);
	int *bitmap = (int *)tmp;
	bitmap[BLK(num)] &= ~(1 << OFFSET(num));
	disk_write(INODE_BITMAP, bitmap);
	modifySuperBlock(1, 0);
}

void writeINode(int num, INode inode) {
	disk_read(INODE(BLK(num)), tmp);
	INode *node = (INode *)tmp;
	node[OFFSET(num)] = inode;
	disk_write(INODE(BLK(num)), node);
}

int getNumByPath(const char* path) {
	printf("getNumByPath is called: %s\n", path);
	int fa, u = ROOT_NODE;
	strcpy(_path, path);
	char *token = strtok(_path, "/");
	while (token) {
		fa = u;
		u = getNumByName(fa, token);
		token = strtok(NULL, "/");
	}
	return u;
}

void getNameByPath(const char *path, char *name) {
	strcpy(_path, path);
	char *token = strtok(_path, "/");
	while (token) {
		strcpy(name, token);
		token = strtok(NULL, "/");
	}
}

int getFatherNumByPath(const char *path) {
	printf("getFatherNumByPath is called: %s\n", path);
	strcpy(_path, path);
	char fa[BLOCK_SIZE + 1] = "\0";
	char *token = strtok(_path, "/");
	while (token) {
		static char lst[BLOCK_SIZE + 1];
		strcpy(lst, token);
		token = strtok(NULL, "/");
		if (token) {
			strcat(fa, "/");
			strcat(fa, lst);
		}
	}
	return getNumByPath(fa);
}

int addFile2Block(File file, int num) {
	printf("addFile2Block is called: (%d, %s) -> Block %d\n", file.node, file.name, num);
	Directory *dir = (Directory *)tmp;
	readDirectory(num, dir);
	int len = dir->size;
	if (len < FILE_PER_BLOCK) {
		dir->size++;
		dir->file[len] = file;
		disk_write(DATA(num), dir);
		return 0;
	}
	return -1;
}

int addFile2Indirect(File file, INode fa, int i) {
	printf("addFile2Indirect is called: (%d, %s) -> Indirect %d\n", file.node, file.name, fa.indirect[i]);
	readIndirect(fa, ptr, i);
	printf("size %d:\n", ptr[0]);
	for (int i = 1; i <= ptr[0]; i++)
		printf("%d ", ptr[i]);
	printf("\n");
	for (int i = 1; i <= ptr[0]; i++) {
		if (ptr[i] == -1) {
			ptr[i] = findFreeBlock();
			disk_write(DATA(fa.indirect[i]), ptr);
		}
		if (addFile2Block(file, ptr[i]) == 0)
			return 0;
	}
	if (ptr[0] == INDIRECT_SIZE)
		return -1;
	if ((ptr[++ptr[0]] = findFreeBlock()) == -1) 
		return -1;
	printf("now size: %d, last ptr %d\n", ptr[0], ptr[ptr[0]]);
	if (addFile2Block(file, ptr[ptr[0]]) == 0) {
		disk_write(DATA(fa.indirect[i]), ptr);
		return 0;
	}
	return -1;
}

int addFile2Dir(File file, int num) {
	printf("addFile2Dir is called: (%d, %s) -> INode %d\n", file.node, file.name, num);
	INode fa = getINodeByNum(num);
	printf("INode %d, blockNum %d, Indirect %d %d\n", num, fa.blockNum, fa.indirect[0], fa.indirect[1]);
	fa.mtime = fa.ctime = time(NULL);
	if (!fa.blockNum) {
		fa.blockNum = 1;
		fa.block[0] = findFreeBlock();
		writeINode(num, fa);
	}
	if (fa.blockNum < 12) {
		for (int i = 0; i < fa.blockNum; i++) {
			int blk = fa.block[i];
			printf("%d: Block %d\n", i, blk);
			if (blk == -1) {
				blk = fa.block[i] = findFreeBlock();			
				writeINode(num, fa);
			}
			if (addFile2Block(file, blk) == 0)
				return 0;
		}
		int blk = fa.block[fa.blockNum++] = findFreeBlock();
		writeINode(num, fa);
		return addFile2Block(file, blk);
	}
	if (addFile2Block(file, fa.block[DIRECT_POINTER - 1]) == 0)
		return 0;
	if (initIndirect(&fa, 0) == -1)
		return -1;
	writeINode(num, fa);
	if (addFile2Indirect(file, fa, 0) == 0)
		return 0;
	if (initIndirect(&fa, 1) == -1)
		return -1;
	writeINode(num, fa);
	return addFile2Indirect(file, fa, 0);
}

int truncateIndirect(INode *node, size_t size) {
	printf("truncateIndirect is called: %ld\n", size);
	int cnt = (size - 1) / BLOCK_SIZE + 1;
	int cur = node->blockNum;
	printf("cur %d, cnt %d\n", cur, cnt);
	if (cur < 12)
		for (int i = cur; i < 12; i++)
			if ((node->block[i] = findFreeBlock()) == -1)
				return -1;
	
	node->blockNum = 12;
	cnt -= 12;
	initIndirect(node, 0);
	readIndirect(*node, data, 0);
	if (cnt <= INDIRECT_SIZE) {
		if (data[0] >= cnt) { 
			data[0] = cnt;
			disk_write(DATA(node->indirect[0]), data);
			return 0;
		}
		for (int i = data[0] + 1; i <= cnt; i++)
			if ((data[i] = findFreeBlock()) == -1)
				return -1;
		data[0] = cnt;
		disk_write(DATA(node->indirect[0]), data);
	} else {
		for (int i = data[0] + 1; i <= INDIRECT_SIZE; i++)
			if ((data[i] = findFreeBlock()) == -1)
				return -1;
		data[0] = INDIRECT_SIZE;
	}
	printf("Indirect 0: size %d\n", data[0]);
	for (int i = 1; i <= data[0]; i++)
		printf("%d ", data[i]);
	printf("\n");
	disk_write(DATA(node->indirect[0]), data);
	cnt -= INDIRECT_SIZE;
	if (cnt <= 0)
		return 0;
	if (cnt > INDIRECT_SIZE) return -1;
	initIndirect(node, 1);
	readIndirect(*node, data, 1);
	if (data[0] >= cnt) { 
		data[0] = cnt;
		disk_write(DATA(node->indirect[1]), data);
		return 0;
	}
	for (int i = data[0] + 1; i < cnt; i++)
		if ((data[i] = findFreeBlock()) == -1)
			return -1;
	data[0] = cnt;
	disk_write(DATA(node->indirect[1]), data);
	return 0;
}

int removeFileInDir(Directory *dir, const char *name) {
	printf("removeFileInDir is called: size %d, name %s\n", dir->size, name);
	int size = dir->size;
	for (int i = 0; i < size; i++) 
		if (!strcmp(dir->file[i].name, name)) {
			dir->size--;
			for (i = i + 1; i < size; i++) 
				dir->file[i - 1] = dir->file[i];
			return 0;
		}
	return -1;
}

int removeFile(int num, const char *name) {
	printf("removeFile is called: Inode %d, name %s\n", num, name);
	INode fa = getINodeByNum(num);
	fa.ctime = fa.mtime = time(NULL);
	if (fa.mode == REGMODE)
		return -1;
	for (int i = 0; i < fa.blockNum; i++) {
		int blk = fa.block[i];
		Directory *dir = (Directory *)tmp;
		readDirectory(blk, dir);
		if (!removeFileInDir(dir, name)) {
			disk_write(DATA(blk), dir);
			if (!dir->size) {
				removeData(blk);
				fa.block[i] = -1;
				writeINode(num, fa);
			}
			return 0;
		}
	}
	for (int i = 0; i < 2; i++) {
		readIndirect(fa, ptr, i);
		for (int j = 1; j <= ptr[0]; j++) {
			int blk = ptr[j];
			Directory *dir = (Directory *)tmp;
			readDirectory(blk, dir);
			if (!removeFileInDir(dir, name)) {
				disk_write(DATA(blk), dir);
				if (!dir->size) {
					removeData(blk);
					ptr[ptr[0]] = -1;
				}
				return 0;
			}
		}
	}
	return -1;
}

int readBlock(INode node, char *buffer, int blk) {
	printf("readBlock is called: Block %d\n", blk);
	disk_read(DATA(blk), tmp);
	memcpy(buffer, tmp, BLOCK_SIZE);
	return BLOCK_SIZE;
}

int readStartBlock(INode node, char *buffer, int blk, int offset) {
	printf("readStartBlock is called: Block %d, offset %d\n", blk, offset);
	disk_read(DATA(blk), tmp);
	// tmp[BLOCK_SIZE] = '\0';
	memcpy(buffer, tmp + offset, BLOCK_SIZE - offset);
	return BLOCK_SIZE - offset;
}

int readEndBlock(INode node, char *buffer, int blk, int size) {
	printf("readEndBlock is called: Block %d, size %d\n", blk, size);
	disk_read(DATA(blk), tmp);
	memcpy(buffer, tmp, size);
	return size;
}

int writeBlock(INode node, const char *buffer, int blk, int offset, int size) {
	printf("writeBlock is called: Block %d, offset %d, size %d\n", blk, offset, size);
	disk_read(DATA(blk), tmp);
	memcpy(tmp + offset, buffer, size);
	tmp[offset + size] = '\0';
	disk_write(DATA(blk), tmp);
	return size;
}

//Format the virtual block device in the following function
int mkfs() {
	SuperBlock superBlock;
	superBlock.blockSize = BLOCK_SIZE;
	superBlock.blockNum = BLOCK_NUM;
	superBlock.freeBlock = BLOCK_NUM - 4;
	superBlock.fileNode = FILE_NODE;
	superBlock.freeNode = FILE_NODE / INODE_PER_BLOCK;
	superBlock.fileName = FILE_NAME;
	writeSuperBlock(superBlock);

	Bitmap bitmap;
	memset(bitmap, 0, sizeof(bitmap));
	disk_write(INODE_BITMAP, bitmap);
	disk_write(DATA_BITMAP_1, bitmap);
	disk_write(DATA_BITMAP_2, bitmap);

	INode mnt;
	int node = findFree(INODE_BITMAP);
	initINode(&mnt, DIRMODE);
	writeINode(node, mnt);
	return 0;
}

//Filesystem operations that you need to implement
int fs_getattr(const char *path, struct stat *attr) {
	printf("Getattr is called: %s\n", path);
	int num = getNumByPath(path);
	printf("Getattr num: %d\n", num);
	if (num == -1) 
		return -ENOENT;
	INode node = getINodeByNum(num);
	attr->st_mode = node.mode;
	attr->st_nlink = 1;
	attr->st_uid = getuid();
	attr->st_gid = getgid();
	attr->st_size = node.size;
	attr->st_atime = node.atime;
	attr->st_mtime = node.mtime;
	attr->st_ctime = node.ctime;
	return 0;
}

int fs_readdir(const char *path, void *buffer, fuse_fill_dir_t filler, off_t offset, struct fuse_file_info *fi) {
	printf("Readdir is called: %s\n", path);
	int num = getNumByPath(path);
	INode node = getINodeByNum(num);
	node.atime = time(NULL);
	writeINode(num, node);
	printf("INode num: %d\n", num);
	// readdir from direct
	for (int i = 0; i < node.blockNum; i++) {
		int blk = node.block[i];
		Directory *dir = (Directory *)tmp;
		readDirectory(blk, dir);
		int len = dir->size;
		// printf("%d: Block %d, len %d\n", i, blk, len);
		for (int j = 0; j < len; j++)
			filler(buffer, dir->file[j].name, NULL, 0);
	}
	// readdir from indirect
	for (int i = 0; i < 2; i++) {
		readIndirect(node, data, i);
		for (int j = 1; j <= data[0]; j++) {
			int blk = data[j];
			Directory *dir = (Directory *)tmp;
			readDirectory(blk, dir);
			int len = dir->size;
			for (int k = 0; k < len; k++) 
				filler(buffer, dir->file[k].name, NULL, 0);
		}
	}
	return 0;
}

int fs_read(const char *path, char *buffer, size_t size, off_t offset, struct fuse_file_info *fi) {
	printf("Read is called: %s\n", path);
	int num = getNumByPath(path);
	INode node = getINodeByNum(num);
	node.atime = time(NULL);

	int start = offset / BLOCK_SIZE;
	int startOff = offset % BLOCK_SIZE;
	int end = (offset + size - 1) / BLOCK_SIZE;
	int endOff = (offset + size - 1) % BLOCK_SIZE + 1;
	printf("start %d, offset %d, end %d, offset %d\n", start, startOff, end, endOff);
	if (offset >= node.size)
		return 0;

	int res = 0;
	if (end < DIRECT_POINTER) {
		if (start == end) {
			disk_read(DATA(node.block[start]), tmp);
			memcpy(buffer, tmp + offset, size);
			return (int)size;
		}
		res += readStartBlock(node, buffer, node.block[start], startOff);
		for (int i = start + 1; i < end; i++)
			res += readBlock(node, buffer + res, node.block[i]);
		if (end < node.blockNum)
			res += readEndBlock(node, buffer + res, node.block[end], endOff);
	} else if (start < DIRECT_POINTER) {
		res += readStartBlock(node, buffer, node.block[start], startOff);
		for (int i = start + 1; i < node.blockNum; i++)
			res += readBlock(node, buffer + res, node.block[i]);
		end -= (DIRECT_POINTER - 1);
		printf("new End: %d\n", end);
		for (int i = 0; i < 2; i++) {
			readIndirect(node, ptr, i);
			for (int j = 1; j <= ptr[0] && j < end; j++)
				res += readBlock(node, buffer + res, ptr[j]);
			if (end > ptr[0])
				end -= ptr[0];
			else {
				res += readEndBlock(node, buffer + res, ptr[end], endOff);
				break;
			}
		}
	} else {
		start -= (DIRECT_POINTER - 1);
		end -= (DIRECT_POINTER - 1);
		for (int i = 0; i < 2; i++) {
			readIndirect(node, ptr, i);
			if (start > ptr[0]) {
				start -= ptr[0];
				end -= ptr[0];
				continue;
			}
			if (start)
				res += readStartBlock(node, buffer, ptr[start], startOff);
			for (int j = start + 1; j <= ptr[0] && j < end; j++)
				res += readBlock(node, buffer + res, ptr[j]);
			if (end > ptr[0]) {
				start = 0;
				end -= ptr[0];
			}
			else {
				res += readEndBlock(node, buffer + res, ptr[end], endOff);
				break;
			}
		}
	}
	printf("Read return %d, expect %ld\n", res, size);
	return res;
}

int fs_mknod(const char *path, mode_t mode, dev_t dev) {
	printf("Mknod is called: %s\n", path);
	int num = findFree(INODE_BITMAP);
	if (num == -1)
		return -ENOSPC;
	INode node;
	initINode(&node, REGMODE);
	writeINode(num, node);

	File file;
	file.node = num;
	getNameByPath(path, file.name);

	int fa = getFatherNumByPath(path);
	if (fa == -1 || addFile2Dir(file, fa) == -1)
		return -ENOSPC;
	return 0;
}

int fs_mkdir(const char *path, mode_t mode) {
	printf("Mkdir is called: %s\n", path);
	int num = findFree(INODE_BITMAP);
	if (num == -1)
		return -ENOSPC;
	INode node;
	initINode(&node, DIRMODE);
	writeINode(num, node);

	File file;
	file.node = num;
	getNameByPath(path, file.name);

	int fa = getFatherNumByPath(path);
	if (fa == -1 || addFile2Dir(file, fa) == -1)
		return -ENOSPC;
	return 0;
}

int fs_rmdir(const char *path) {
	printf("Rmdir is called: %s\n", path);
	static char name[FILE_NAME];
	getNameByPath(path, name);
	int num = getNumByPath(path);
	INode node = getINodeByNum(num);
	removeINode(node, num);

	int fa = getFatherNumByPath(path);
	if (fa == -1 || removeFile(fa, name) == -1)
		return -ENOSPC;
	return 0;
}

int fs_unlink(const char *path) {
	printf("Unlink is callded: %s\n", path);
	static char name[FILE_NAME];
	getNameByPath(path, name);
	int num = getNumByPath(path);
	INode node = getINodeByNum(num);
	removeINode(node, num);

	int fa = getFatherNumByPath(path);
	if (fa == -1 || removeFile(fa, name) == -1)
		return -ENOSPC;
	return 0;
}

int fs_rename(const char *oldpath, const char *newpath) {
	printf("Rename is called: %s\n", newpath);
	static char name[FILE_NAME];
	getNameByPath(oldpath, name);
	int num = getNumByPath(oldpath);
	int oldfa = getFatherNumByPath(oldpath);
	if (oldfa == -1 || removeFile(oldfa, name) == -1)
		return -ENOSPC;

	int newfa = getFatherNumByPath(newpath);
	File file;
	file.node = num;
	getNameByPath(newpath, file.name);
	if (newfa == -1 || addFile2Dir(file, newfa) == -1)
		return -ENOSPC;
	return 0;
}

int fs_truncate(const char *path, off_t size) {
	printf("Truncate is called: %s\n", path);
	int num = getNumByPath(path);
	INode node = getINodeByNum(num);
	int cur = node.blockNum;
	int cnt = ((size - 1) / BLOCK_SIZE) + 1;
	if (cnt > 12) {
		if (truncateIndirect(&node, size) == -1)
			return -ENOSPC;
	} else if (cnt > cur) {
		node.blockNum = cnt;
		for (int i = cur; i < cnt; i++) {
			node.block[i] = findFreeBlock();
			if (node.block[i] == -1)
				return -ENOSPC;
		}
	} else
		node.blockNum = cnt;
	node.size = size;
	writeINode(num, node);
	printf("After truncate: size %ld\n", node.size);
	return 0;
}

int fs_write(const char *path, const char *buffer, size_t size, off_t offset, struct fuse_file_info *fi) {
	printf("Write is called: %s\n", path);
	int cur = offset + size;
	if (fs_truncate(path, cur) != 0)
		return 0;
	int num = getNumByPath(path);
	INode node = getINodeByNum(num);
	node.size = cur;
	node.mtime = node.ctime = time(NULL);
	writeINode(num, node);

	int start = offset / BLOCK_SIZE;
	int startOff = offset % BLOCK_SIZE;
	printf("start %d, offset %d, size %ld\n", start, startOff, size);
	if (offset >= node.size)
		return 0;

	if (start < DIRECT_POINTER) 
		return writeBlock(node, buffer, node.block[start], startOff, size);
	else {
		start -= (DIRECT_POINTER - 1);
		for (int i = 0; i < 2; i++) {
			readIndirect(node, ptr, i);
			if (start > ptr[0]) {
				start -= ptr[0];
				continue;
			}
			return writeBlock(node, buffer, ptr[start], startOff, size);
		}
	}
	return 0;
}

int fs_utime(const char *path, struct utimbuf *buffer) {
	printf("Utime is called: %s\n", path);
	int num = getNumByPath(path);
	INode node = getINodeByNum(num);
	node.atime = buffer->actime;
	node.mtime = buffer->modtime;
	node.ctime = time(NULL);
	writeINode(num, node);
	return 0;
}

int fs_statfs(const char *path, struct statvfs *stat)
{
	printf("Statfs is called: %s\n", path);
	SuperBlock superBlock = readSuperBlock();
	stat->f_bsize = superBlock.blockSize;
	stat->f_blocks = superBlock.blockNum;
	stat->f_bfree = superBlock.freeBlock;
	stat->f_bavail = superBlock.freeBlock;
	stat->f_files = superBlock.fileNode;
	stat->f_ffree = superBlock.freeNode;
	stat->f_favail = superBlock.freeNode;
	stat->f_namemax = superBlock.fileName;
	return 0;
}

int fs_open(const char *path, struct fuse_file_info *fi) {
	printf("Open is called: %s\n", path);
	return 0;
}

//Functions you don't actually need to modify
int fs_release(const char *path, struct fuse_file_info *fi) {
	printf("Release is called: %s\n", path);
	return 0;
}

int fs_opendir(const char *path, struct fuse_file_info *fi) {
	printf("Opendir is called: %s\n", path);
	return 0;
}

int fs_releasedir(const char * path, struct fuse_file_info *fi) {
	printf("Releasedir is called: %s\n", path);
	return 0;
}

static struct fuse_operations fs_operations = {
	.getattr    = fs_getattr,
	.readdir    = fs_readdir,
	.read       = fs_read,
	.mkdir      = fs_mkdir,
	.rmdir      = fs_rmdir,
	.unlink     = fs_unlink,
	.rename     = fs_rename,
	.truncate   = fs_truncate,
	.utime      = fs_utime,
	.mknod      = fs_mknod,
	.write      = fs_write,
	.statfs     = fs_statfs,
	.open       = fs_open,
	.release    = fs_release,
	.opendir    = fs_opendir,
	.releasedir = fs_releasedir
};

int main(int argc, char *argv[]) {
	if (disk_init()) {
		printf("Can't open virtual disk!\n");
		return -1;
	}
	if(mkfs()) {
		printf("Mkfs failed!\n");
		return -2;
	}
    return fuse_main(argc, argv, &fs_operations, NULL);
}
