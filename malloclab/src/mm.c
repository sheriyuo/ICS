/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 *
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  A block is pure payload. There are no headers or
 * footers.  Blocks are never coalesced or reused. Realloc is
 * implemented directly using mm_malloc and mm_free.
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "memlib.h"
#include "mm.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "ateam",
    /* First member's full name */
    "Harry Bovik",
    /* First member's email address */
    "bovik@cs.cmu.edu",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""};

#define min(x, y) ((x) < (y) ? (x) : (y))
#define max(x, y) ((x) > (y) ? (x) : (y))

typedef unsigned int U_INT;
#define WSIZE 4
#define DSIZE 8
#define LIST_LEN 15
#define CHUNK_SIZE 136
#define BLK(size, alloc) ((size) | (alloc))
#define READ(p) (*(U_INT *)(p))
#define WRITE(p, val) (*(U_INT *)(p) = (U_INT)(val))
#define SIZE(p) (READ(p) & ~0x7)
#define ALLOC(p) (READ(p) & 0x1)
#define HEAD(bp) ((bp) - WSIZE)
#define FOOT(bp) ((bp) + SIZE(HEAD(bp)) - DSIZE)
#define NEXT(bp) (FOOT(bp) + DSIZE)
#define PREV(bp) ((bp) - SIZE(HEAD(bp) - WSIZE))
#define CSIZE(bp) SIZE(HEAD(bp))
#define NSIZE(bp) SIZE(HEAD(NEXT(bp)))
#define PSIZE(bp) SIZE(HEAD(PREV(bp)))
#define PRED(bp) ((bp) + WSIZE)
#define SUCC(bp) (bp)
#define RPRED(bp) READ(PRED(bp))
#define RSUCC(bp) READ(SUCC(bp))

// #define DEBUG

char *list;

int get_index(size_t x);
void insert(char *bp);
void erase(char *bp);

char *extend(size_t x);
char *coalesce(char *bp);
size_t align(size_t x);
char *find_fit(size_t x, int i);
char *place(char *bp, size_t x);

void unix_error(char *msg) {
    printf("%s\n", msg);
    exit(1);
}

void print_blk(char *bp) {
#ifdef DEBUG
    printf("Pointer: %p\n", bp);
    printf("Header: %p, size %d & alloc %d\n", HEAD(bp), SIZE(HEAD(bp)),
           ALLOC(HEAD(bp)));
    printf("Footer: %p, size %d & alloc %d\n", FOOT(bp), SIZE(FOOT(bp)),
           ALLOC(FOOT(bp)));
    if (!ALLOC(HEAD(bp))) {
        printf("Pred: %p, read %p\n", PRED(bp), RPRED(bp));
        printf("Succ: %p, read %p\n", SUCC(bp), RSUCC(bp));
    }
#endif
}

int get_index(size_t x) {
    int bit = 31 - __builtin_clz(x) - 4;
    if (bit < 0)
        bit = 0;
    if (bit >= LIST_LEN)
        bit = LIST_LEN - 1;
    return bit;
}

void insert(char *bp) {
#ifdef DEBUG
    printf("insert %p\n", bp);
#endif

    int index = get_index(CSIZE(bp));
    char *it = list + index * WSIZE;

    while (RSUCC(it)) {
        it = (char *)RSUCC(it);
        if ((U_INT)it >= (U_INT)bp) {
            char *succ = it;
            it = (char *)RPRED(it);
            WRITE(SUCC(it), bp);
            WRITE(PRED(bp), it);
            WRITE(SUCC(bp), succ);
            WRITE(PRED(succ), bp);
#ifdef DEBUG
            printf("insert end\n", bp);
            print_blk(bp);
#endif
            return;
        }
    }
    WRITE(SUCC(it), bp);
    WRITE(PRED(bp), it);
    WRITE(SUCC(bp), NULL);
#ifdef DEBUG
    printf("insert reach end block\n");
    print_blk(bp);
#endif
}

void erase(char *bp) {
#ifdef DEBUG
    printf("erase %p\n", bp);
    print_blk(bp);
#endif
    if (RPRED(bp) && RSUCC(bp)) {
        WRITE(SUCC(RPRED(bp)), RSUCC(bp));
        WRITE(PRED(RSUCC(bp)), RPRED(bp));
    } else if (RPRED(bp)) {
#ifdef DEBUG
        printf("Only have pred\n", bp);
#endif
        WRITE(SUCC(RPRED(bp)), NULL);
    }

    WRITE(PRED(bp), NULL);
    WRITE(SUCC(bp), NULL);
}

char *extend(size_t x) {
#ifdef DEBUG
    printf("extend %d\n", x);
#endif
    char *bp = mem_sbrk(x);
    if (bp == -1)
        return NULL;

    WRITE(HEAD(bp), BLK(x, 0));
    WRITE(FOOT(bp), BLK(x, 0));
    WRITE(HEAD(NEXT(bp)), BLK(0, 1));

#ifdef DEBUG
    printf("extend end\n");
    print_blk(bp);
#endif
    return coalesce(bp);
}

char *coalesce(char *bp) {
    size_t palloc = ALLOC(FOOT(PREV(bp)));
    size_t nalloc = ALLOC(HEAD(NEXT(bp)));
    size_t size = CSIZE(bp);
#ifdef DEBUG
    printf("coalesce %p, palloc %d, nalloc %d, size %d\n", bp, palloc, nalloc,
           size);
    print_blk(bp);
#endif

    if (!palloc && !nalloc) {
        size += PSIZE(bp) + NSIZE(bp);
        erase(PREV(bp));
        erase(NEXT(bp));
        WRITE(HEAD(PREV(bp)), BLK(size, 0));
        WRITE(FOOT(NEXT(bp)), BLK(size, 0));
        bp = PREV(bp);
        WRITE(PRED(bp), NULL);
        WRITE(SUCC(bp), NULL);
    } else if (palloc && !nalloc) {
        size += NSIZE(bp);
        erase(NEXT(bp));
        WRITE(HEAD(bp), BLK(size, 0));
        WRITE(FOOT(bp), BLK(size, 0));
        WRITE(PRED(bp), NULL);
        WRITE(SUCC(bp), NULL);
    } else if (!palloc && nalloc) {
        size += PSIZE(bp);
        erase(PREV(bp));
        WRITE(FOOT(bp), BLK(size, 0));
        WRITE(HEAD(PREV(bp)), BLK(size, 0));
        bp = PREV(bp);
        WRITE(PRED(bp), NULL);
        WRITE(SUCC(bp), NULL);
    }

#ifdef DEBUG
    printf("coalesce end\n");
    print_blk(bp);
#endif

    insert(bp);
    return bp;
}

size_t align(size_t x) {
    if (x <= DSIZE)
        return 2 * DSIZE;
    else
        return DSIZE * ((x + 2 * DSIZE - 1) / DSIZE);
}

char *find_fit(size_t x, int i) {
#ifdef DEBUG
    printf("find_fit %d %d\n", x, i);
#endif
    int try_times = 10;
    char *ans = NULL;
    while (i < LIST_LEN) {
        char *bp = list + i * WSIZE;
        while (RSUCC(bp)) {
            bp = (char *)RSUCC(bp);
            if (CSIZE(bp) >= x) {
                try_times--;
                if (ans == NULL || CSIZE(ans) > CSIZE(bp))
                    ans = bp;
                if (try_times <= 0) {
#ifdef DEBUG
                    printf("Find %p with size %d\n", ans, CSIZE(ans));
#endif
                    return ans;
                }
            }
        }
        i++;
    }
#ifdef DEBUG
    if (ans == NULL)
        printf("Find NULL\n");
    else
        printf("Find %p with size %d\n", ans, CSIZE(ans));
#endif
    return ans;
}

char *place(char *bp, size_t x) {
    size_t size = CSIZE(bp);
    size_t rsize = size - x;

    if (!ALLOC(HEAD(bp)))
        erase(bp);
    if (rsize >= 2 * DSIZE) {
        WRITE(HEAD(bp), BLK(rsize, 0));
        WRITE(FOOT(bp), BLK(rsize, 0));
        WRITE(HEAD(NEXT(bp)), BLK(x, 1));
        WRITE(FOOT(NEXT(bp)), BLK(x, 1));
        insert(bp);
        return NEXT(bp);
    } else {
        WRITE(HEAD(bp), BLK(size, 1));
        WRITE(FOOT(bp), BLK(size, 1));
    }
    return bp;
}

/*
 * mm_init - initialize the malloc package.
 */
int mm_init(void) {
#ifdef DEBUG
    printf("mm_init\n");
#endif
    if ((list = mem_sbrk((LIST_LEN + 3) * WSIZE)) == -1)
        unix_error("Init list error");
    for (int i = 0; i < LIST_LEN; i++)
        WRITE(list + i * WSIZE, NULL);

    WRITE(list + LIST_LEN * WSIZE, BLK(DSIZE, 1));
    WRITE(list + (LIST_LEN + 1) * WSIZE, BLK(DSIZE, 1));
    WRITE(list + (LIST_LEN + 2) * WSIZE, BLK(0, 1));

    if (extend(CHUNK_SIZE) == NULL)
        unix_error("Extend heap error");

    return 0;
}

/*
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size) {
#ifdef DEBUG
    printf("mm_malloc\n");
    printf("%d -> %d\n", size, align(size));
#endif

    size = align(size);
    if (size == 0)
        return NULL;

    char *bp = find_fit(size, get_index(size));

    if (bp == NULL) {
        if ((bp = extend(max(size, CHUNK_SIZE))) == NULL)
            return NULL;
    }
#ifdef DEBUG
    printf("Find fit: %p\n", bp);
#endif
    return place(bp, size);
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr) {
#ifdef DEBUG
    printf("mm_free\n");
#endif

    size_t size = CSIZE(ptr);
    WRITE(HEAD(ptr), BLK(size, 0));
    WRITE(FOOT(ptr), BLK(size, 0));
    coalesce(ptr);
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size) {
#ifdef DEBUG
    printf("mm_realloc\n");
#endif

    if (ptr == NULL)
        return mm_malloc(size);
    if (size == 0) {
        mm_free(ptr);
        return NULL;
    }
    size_t old_size = CSIZE(ptr);
    size = align(size);
    if (size == old_size)
        return ptr;

    size_t palloc = ALLOC(FOOT(PREV(ptr)));
    size_t nalloc = ALLOC(HEAD(NEXT(ptr)));
    if (!nalloc && (old_size + NSIZE(ptr) >= size)) {
        size_t new_size = old_size + NSIZE(ptr);
        erase(NEXT(ptr));
        WRITE(HEAD(ptr), BLK(new_size, 1));
        WRITE(FOOT(ptr), BLK(new_size, 1));
        place(ptr, new_size);
    } else if (!NSIZE(ptr) && size >= old_size) {
        if (mem_sbrk(size - old_size) == -1)
            return NULL;
        WRITE(HEAD(ptr), BLK(size, 1));
        WRITE(FOOT(ptr), BLK(size, 1));
        WRITE(HEAD(NEXT(ptr)), BLK(0, 1));
        place(ptr, size);
    } else {
        char *new_ptr = mm_malloc(size);
        if (new_ptr == NULL)
            return NULL;
        memcpy(new_ptr, ptr, min(old_size, size));
        mm_free(ptr);
        return new_ptr;
    }
    return ptr;
}