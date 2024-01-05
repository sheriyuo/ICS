
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400bc8 <_init>:
  400bc8:	48 83 ec 08          	sub    $0x8,%rsp
  400bcc:	48 8b 05 25 34 20 00 	mov    0x203425(%rip),%rax        # 603ff8 <__gmon_start__>
  400bd3:	48 85 c0             	test   %rax,%rax
  400bd6:	74 05                	je     400bdd <_init+0x15>
  400bd8:	e8 33 01 00 00       	callq  400d10 <__gmon_start__@plt>
  400bdd:	48 83 c4 08          	add    $0x8,%rsp
  400be1:	c3                   	retq   

Disassembly of section .plt:

0000000000400bf0 <.plt>:
  400bf0:	ff 35 12 34 20 00    	pushq  0x203412(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bf6:	ff 25 14 34 20 00    	jmpq   *0x203414(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bfc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c00 <strcasecmp@plt>:
  400c00:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 604018 <strcasecmp@GLIBC_2.2.5>
  400c06:	68 00 00 00 00       	pushq  $0x0
  400c0b:	e9 e0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c10 <__errno_location@plt>:
  400c10:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 604020 <__errno_location@GLIBC_2.2.5>
  400c16:	68 01 00 00 00       	pushq  $0x1
  400c1b:	e9 d0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c20 <srandom@plt>:
  400c20:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 604028 <srandom@GLIBC_2.2.5>
  400c26:	68 02 00 00 00       	pushq  $0x2
  400c2b:	e9 c0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c30 <strncmp@plt>:
  400c30:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 604030 <strncmp@GLIBC_2.2.5>
  400c36:	68 03 00 00 00       	pushq  $0x3
  400c3b:	e9 b0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c40 <strcpy@plt>:
  400c40:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 604038 <strcpy@GLIBC_2.2.5>
  400c46:	68 04 00 00 00       	pushq  $0x4
  400c4b:	e9 a0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c50 <puts@plt>:
  400c50:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 604040 <puts@GLIBC_2.2.5>
  400c56:	68 05 00 00 00       	pushq  $0x5
  400c5b:	e9 90 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c60 <write@plt>:
  400c60:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 604048 <write@GLIBC_2.2.5>
  400c66:	68 06 00 00 00       	pushq  $0x6
  400c6b:	e9 80 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c70 <mmap@plt>:
  400c70:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 604050 <mmap@GLIBC_2.2.5>
  400c76:	68 07 00 00 00       	pushq  $0x7
  400c7b:	e9 70 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c80 <printf@plt>:
  400c80:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 604058 <printf@GLIBC_2.2.5>
  400c86:	68 08 00 00 00       	pushq  $0x8
  400c8b:	e9 60 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c90 <memset@plt>:
  400c90:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 604060 <memset@GLIBC_2.2.5>
  400c96:	68 09 00 00 00       	pushq  $0x9
  400c9b:	e9 50 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400ca0 <alarm@plt>:
  400ca0:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 604068 <alarm@GLIBC_2.2.5>
  400ca6:	68 0a 00 00 00       	pushq  $0xa
  400cab:	e9 40 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cb0 <close@plt>:
  400cb0:	ff 25 ba 33 20 00    	jmpq   *0x2033ba(%rip)        # 604070 <close@GLIBC_2.2.5>
  400cb6:	68 0b 00 00 00       	pushq  $0xb
  400cbb:	e9 30 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cc0 <read@plt>:
  400cc0:	ff 25 b2 33 20 00    	jmpq   *0x2033b2(%rip)        # 604078 <read@GLIBC_2.2.5>
  400cc6:	68 0c 00 00 00       	pushq  $0xc
  400ccb:	e9 20 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cd0 <__libc_start_main@plt>:
  400cd0:	ff 25 aa 33 20 00    	jmpq   *0x2033aa(%rip)        # 604080 <__libc_start_main@GLIBC_2.2.5>
  400cd6:	68 0d 00 00 00       	pushq  $0xd
  400cdb:	e9 10 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400ce0 <signal@plt>:
  400ce0:	ff 25 a2 33 20 00    	jmpq   *0x2033a2(%rip)        # 604088 <signal@GLIBC_2.2.5>
  400ce6:	68 0e 00 00 00       	pushq  $0xe
  400ceb:	e9 00 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cf0 <gethostbyname@plt>:
  400cf0:	ff 25 9a 33 20 00    	jmpq   *0x20339a(%rip)        # 604090 <gethostbyname@GLIBC_2.2.5>
  400cf6:	68 0f 00 00 00       	pushq  $0xf
  400cfb:	e9 f0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d00 <fprintf@plt>:
  400d00:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 604098 <fprintf@GLIBC_2.2.5>
  400d06:	68 10 00 00 00       	pushq  $0x10
  400d0b:	e9 e0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d10 <__gmon_start__@plt>:
  400d10:	ff 25 8a 33 20 00    	jmpq   *0x20338a(%rip)        # 6040a0 <__gmon_start__>
  400d16:	68 11 00 00 00       	pushq  $0x11
  400d1b:	e9 d0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d20 <strtol@plt>:
  400d20:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 6040a8 <strtol@GLIBC_2.2.5>
  400d26:	68 12 00 00 00       	pushq  $0x12
  400d2b:	e9 c0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d30 <memcpy@plt>:
  400d30:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 6040b0 <memcpy@GLIBC_2.14>
  400d36:	68 13 00 00 00       	pushq  $0x13
  400d3b:	e9 b0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d40 <time@plt>:
  400d40:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 6040b8 <time@GLIBC_2.2.5>
  400d46:	68 14 00 00 00       	pushq  $0x14
  400d4b:	e9 a0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d50 <random@plt>:
  400d50:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 6040c0 <random@GLIBC_2.2.5>
  400d56:	68 15 00 00 00       	pushq  $0x15
  400d5b:	e9 90 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d60 <_IO_getc@plt>:
  400d60:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 6040c8 <_IO_getc@GLIBC_2.2.5>
  400d66:	68 16 00 00 00       	pushq  $0x16
  400d6b:	e9 80 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d70 <__isoc99_sscanf@plt>:
  400d70:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 6040d0 <__isoc99_sscanf@GLIBC_2.7>
  400d76:	68 17 00 00 00       	pushq  $0x17
  400d7b:	e9 70 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d80 <munmap@plt>:
  400d80:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 6040d8 <munmap@GLIBC_2.2.5>
  400d86:	68 18 00 00 00       	pushq  $0x18
  400d8b:	e9 60 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d90 <bcopy@plt>:
  400d90:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 6040e0 <bcopy@GLIBC_2.2.5>
  400d96:	68 19 00 00 00       	pushq  $0x19
  400d9b:	e9 50 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400da0 <fopen@plt>:
  400da0:	ff 25 42 33 20 00    	jmpq   *0x203342(%rip)        # 6040e8 <fopen@GLIBC_2.2.5>
  400da6:	68 1a 00 00 00       	pushq  $0x1a
  400dab:	e9 40 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400db0 <getopt@plt>:
  400db0:	ff 25 3a 33 20 00    	jmpq   *0x20333a(%rip)        # 6040f0 <getopt@GLIBC_2.2.5>
  400db6:	68 1b 00 00 00       	pushq  $0x1b
  400dbb:	e9 30 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400dc0 <strtoul@plt>:
  400dc0:	ff 25 32 33 20 00    	jmpq   *0x203332(%rip)        # 6040f8 <strtoul@GLIBC_2.2.5>
  400dc6:	68 1c 00 00 00       	pushq  $0x1c
  400dcb:	e9 20 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400dd0 <gethostname@plt>:
  400dd0:	ff 25 2a 33 20 00    	jmpq   *0x20332a(%rip)        # 604100 <gethostname@GLIBC_2.2.5>
  400dd6:	68 1d 00 00 00       	pushq  $0x1d
  400ddb:	e9 10 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400de0 <sprintf@plt>:
  400de0:	ff 25 22 33 20 00    	jmpq   *0x203322(%rip)        # 604108 <sprintf@GLIBC_2.2.5>
  400de6:	68 1e 00 00 00       	pushq  $0x1e
  400deb:	e9 00 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400df0 <exit@plt>:
  400df0:	ff 25 1a 33 20 00    	jmpq   *0x20331a(%rip)        # 604110 <exit@GLIBC_2.2.5>
  400df6:	68 1f 00 00 00       	pushq  $0x1f
  400dfb:	e9 f0 fd ff ff       	jmpq   400bf0 <.plt>

0000000000400e00 <connect@plt>:
  400e00:	ff 25 12 33 20 00    	jmpq   *0x203312(%rip)        # 604118 <connect@GLIBC_2.2.5>
  400e06:	68 20 00 00 00       	pushq  $0x20
  400e0b:	e9 e0 fd ff ff       	jmpq   400bf0 <.plt>

0000000000400e10 <socket@plt>:
  400e10:	ff 25 0a 33 20 00    	jmpq   *0x20330a(%rip)        # 604120 <socket@GLIBC_2.2.5>
  400e16:	68 21 00 00 00       	pushq  $0x21
  400e1b:	e9 d0 fd ff ff       	jmpq   400bf0 <.plt>

Disassembly of section .text:

0000000000400e20 <_start>:
  400e20:	31 ed                	xor    %ebp,%ebp
  400e22:	49 89 d1             	mov    %rdx,%r9
  400e25:	5e                   	pop    %rsi
  400e26:	48 89 e2             	mov    %rsp,%rdx
  400e29:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400e2d:	50                   	push   %rax
  400e2e:	54                   	push   %rsp
  400e2f:	49 c7 c0 f0 2b 40 00 	mov    $0x402bf0,%r8
  400e36:	48 c7 c1 80 2b 40 00 	mov    $0x402b80,%rcx
  400e3d:	48 c7 c7 e0 10 40 00 	mov    $0x4010e0,%rdi
  400e44:	e8 87 fe ff ff       	callq  400cd0 <__libc_start_main@plt>
  400e49:	f4                   	hlt    
  400e4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e50 <deregister_tm_clones>:
  400e50:	b8 b7 44 60 00       	mov    $0x6044b7,%eax
  400e55:	55                   	push   %rbp
  400e56:	48 2d b0 44 60 00    	sub    $0x6044b0,%rax
  400e5c:	48 83 f8 0e          	cmp    $0xe,%rax
  400e60:	48 89 e5             	mov    %rsp,%rbp
  400e63:	77 02                	ja     400e67 <deregister_tm_clones+0x17>
  400e65:	5d                   	pop    %rbp
  400e66:	c3                   	retq   
  400e67:	b8 00 00 00 00       	mov    $0x0,%eax
  400e6c:	48 85 c0             	test   %rax,%rax
  400e6f:	74 f4                	je     400e65 <deregister_tm_clones+0x15>
  400e71:	5d                   	pop    %rbp
  400e72:	bf b0 44 60 00       	mov    $0x6044b0,%edi
  400e77:	ff e0                	jmpq   *%rax
  400e79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e80 <register_tm_clones>:
  400e80:	b8 b0 44 60 00       	mov    $0x6044b0,%eax
  400e85:	55                   	push   %rbp
  400e86:	48 2d b0 44 60 00    	sub    $0x6044b0,%rax
  400e8c:	48 c1 f8 03          	sar    $0x3,%rax
  400e90:	48 89 e5             	mov    %rsp,%rbp
  400e93:	48 89 c2             	mov    %rax,%rdx
  400e96:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400e9a:	48 01 d0             	add    %rdx,%rax
  400e9d:	48 d1 f8             	sar    %rax
  400ea0:	75 02                	jne    400ea4 <register_tm_clones+0x24>
  400ea2:	5d                   	pop    %rbp
  400ea3:	c3                   	retq   
  400ea4:	ba 00 00 00 00       	mov    $0x0,%edx
  400ea9:	48 85 d2             	test   %rdx,%rdx
  400eac:	74 f4                	je     400ea2 <register_tm_clones+0x22>
  400eae:	5d                   	pop    %rbp
  400eaf:	48 89 c6             	mov    %rax,%rsi
  400eb2:	bf b0 44 60 00       	mov    $0x6044b0,%edi
  400eb7:	ff e2                	jmpq   *%rdx
  400eb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400ec0 <__do_global_dtors_aux>:
  400ec0:	80 3d 11 36 20 00 00 	cmpb   $0x0,0x203611(%rip)        # 6044d8 <completed.6355>
  400ec7:	75 11                	jne    400eda <__do_global_dtors_aux+0x1a>
  400ec9:	55                   	push   %rbp
  400eca:	48 89 e5             	mov    %rsp,%rbp
  400ecd:	e8 7e ff ff ff       	callq  400e50 <deregister_tm_clones>
  400ed2:	5d                   	pop    %rbp
  400ed3:	c6 05 fe 35 20 00 01 	movb   $0x1,0x2035fe(%rip)        # 6044d8 <completed.6355>
  400eda:	f3 c3                	repz retq 
  400edc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ee0 <frame_dummy>:
  400ee0:	48 83 3d 38 2f 20 00 	cmpq   $0x0,0x202f38(%rip)        # 603e20 <__JCR_END__>
  400ee7:	00 
  400ee8:	74 1e                	je     400f08 <frame_dummy+0x28>
  400eea:	b8 00 00 00 00       	mov    $0x0,%eax
  400eef:	48 85 c0             	test   %rax,%rax
  400ef2:	74 14                	je     400f08 <frame_dummy+0x28>
  400ef4:	55                   	push   %rbp
  400ef5:	bf 20 3e 60 00       	mov    $0x603e20,%edi
  400efa:	48 89 e5             	mov    %rsp,%rbp
  400efd:	ff d0                	callq  *%rax
  400eff:	5d                   	pop    %rbp
  400f00:	e9 7b ff ff ff       	jmpq   400e80 <register_tm_clones>
  400f05:	0f 1f 00             	nopl   (%rax)
  400f08:	e9 73 ff ff ff       	jmpq   400e80 <register_tm_clones>
  400f0d:	0f 1f 00             	nopl   (%rax)

0000000000400f10 <usage>:
  400f10:	48 83 ec 08          	sub    $0x8,%rsp
  400f14:	48 89 fe             	mov    %rdi,%rsi
  400f17:	83 3d ea 35 20 00 00 	cmpl   $0x0,0x2035ea(%rip)        # 604508 <is_checker>
  400f1e:	74 39                	je     400f59 <usage+0x49>
  400f20:	bf 10 2c 40 00       	mov    $0x402c10,%edi
  400f25:	b8 00 00 00 00       	mov    $0x0,%eax
  400f2a:	e8 51 fd ff ff       	callq  400c80 <printf@plt>
  400f2f:	bf 48 2c 40 00       	mov    $0x402c48,%edi
  400f34:	e8 17 fd ff ff       	callq  400c50 <puts@plt>
  400f39:	bf c0 2d 40 00       	mov    $0x402dc0,%edi
  400f3e:	e8 0d fd ff ff       	callq  400c50 <puts@plt>
  400f43:	bf 70 2c 40 00       	mov    $0x402c70,%edi
  400f48:	e8 03 fd ff ff       	callq  400c50 <puts@plt>
  400f4d:	bf da 2d 40 00       	mov    $0x402dda,%edi
  400f52:	e8 f9 fc ff ff       	callq  400c50 <puts@plt>
  400f57:	eb 2d                	jmp    400f86 <usage+0x76>
  400f59:	bf f6 2d 40 00       	mov    $0x402df6,%edi
  400f5e:	b8 00 00 00 00       	mov    $0x0,%eax
  400f63:	e8 18 fd ff ff       	callq  400c80 <printf@plt>
  400f68:	bf 98 2c 40 00       	mov    $0x402c98,%edi
  400f6d:	e8 de fc ff ff       	callq  400c50 <puts@plt>
  400f72:	bf c0 2c 40 00       	mov    $0x402cc0,%edi
  400f77:	e8 d4 fc ff ff       	callq  400c50 <puts@plt>
  400f7c:	bf 14 2e 40 00       	mov    $0x402e14,%edi
  400f81:	e8 ca fc ff ff       	callq  400c50 <puts@plt>
  400f86:	bf 00 00 00 00       	mov    $0x0,%edi
  400f8b:	e8 60 fe ff ff       	callq  400df0 <exit@plt>

0000000000400f90 <initialize_target>:
  400f90:	55                   	push   %rbp
  400f91:	53                   	push   %rbx
  400f92:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400f99:	89 f5                	mov    %esi,%ebp
  400f9b:	89 3d 57 35 20 00    	mov    %edi,0x203557(%rip)        # 6044f8 <check_level>
  400fa1:	8b 3d c1 31 20 00    	mov    0x2031c1(%rip),%edi        # 604168 <target_id>
  400fa7:	e8 a7 1b 00 00       	callq  402b53 <gencookie>
  400fac:	89 05 52 35 20 00    	mov    %eax,0x203552(%rip)        # 604504 <cookie>
  400fb2:	89 c7                	mov    %eax,%edi
  400fb4:	e8 9a 1b 00 00       	callq  402b53 <gencookie>
  400fb9:	89 05 41 35 20 00    	mov    %eax,0x203541(%rip)        # 604500 <authkey>
  400fbf:	8b 05 a3 31 20 00    	mov    0x2031a3(%rip),%eax        # 604168 <target_id>
  400fc5:	8d 78 01             	lea    0x1(%rax),%edi
  400fc8:	e8 53 fc ff ff       	callq  400c20 <srandom@plt>
  400fcd:	e8 7e fd ff ff       	callq  400d50 <random@plt>
  400fd2:	89 c7                	mov    %eax,%edi
  400fd4:	e8 ca 02 00 00       	callq  4012a3 <scramble>
  400fd9:	89 c3                	mov    %eax,%ebx
  400fdb:	85 ed                	test   %ebp,%ebp
  400fdd:	74 18                	je     400ff7 <initialize_target+0x67>
  400fdf:	bf 00 00 00 00       	mov    $0x0,%edi
  400fe4:	e8 57 fd ff ff       	callq  400d40 <time@plt>
  400fe9:	89 c7                	mov    %eax,%edi
  400feb:	e8 30 fc ff ff       	callq  400c20 <srandom@plt>
  400ff0:	e8 5b fd ff ff       	callq  400d50 <random@plt>
  400ff5:	eb 05                	jmp    400ffc <initialize_target+0x6c>
  400ff7:	b8 00 00 00 00       	mov    $0x0,%eax
  400ffc:	01 c3                	add    %eax,%ebx
  400ffe:	0f b7 db             	movzwl %bx,%ebx
  401001:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  401008:	89 c0                	mov    %eax,%eax
  40100a:	48 89 05 8f 34 20 00 	mov    %rax,0x20348f(%rip)        # 6044a0 <buf_offset>
  401011:	c6 05 10 41 20 00 63 	movb   $0x63,0x204110(%rip)        # 605128 <target_prefix>
  401018:	83 3d 89 34 20 00 00 	cmpl   $0x0,0x203489(%rip)        # 6044a8 <notify>
  40101f:	0f 84 b1 00 00 00    	je     4010d6 <initialize_target+0x146>
  401025:	83 3d dc 34 20 00 00 	cmpl   $0x0,0x2034dc(%rip)        # 604508 <is_checker>
  40102c:	0f 85 a4 00 00 00    	jne    4010d6 <initialize_target+0x146>
  401032:	be 00 01 00 00       	mov    $0x100,%esi
  401037:	48 89 e7             	mov    %rsp,%rdi
  40103a:	e8 91 fd ff ff       	callq  400dd0 <gethostname@plt>
  40103f:	85 c0                	test   %eax,%eax
  401041:	74 25                	je     401068 <initialize_target+0xd8>
  401043:	bf f0 2c 40 00       	mov    $0x402cf0,%edi
  401048:	e8 03 fc ff ff       	callq  400c50 <puts@plt>
  40104d:	bf 08 00 00 00       	mov    $0x8,%edi
  401052:	e8 99 fd ff ff       	callq  400df0 <exit@plt>
  401057:	48 89 e6             	mov    %rsp,%rsi
  40105a:	e8 a1 fb ff ff       	callq  400c00 <strcasecmp@plt>
  40105f:	85 c0                	test   %eax,%eax
  401061:	74 21                	je     401084 <initialize_target+0xf4>
  401063:	83 c3 01             	add    $0x1,%ebx
  401066:	eb 05                	jmp    40106d <initialize_target+0xdd>
  401068:	bb 00 00 00 00       	mov    $0x0,%ebx
  40106d:	48 63 c3             	movslq %ebx,%rax
  401070:	48 8b 3c c5 80 41 60 	mov    0x604180(,%rax,8),%rdi
  401077:	00 
  401078:	48 85 ff             	test   %rdi,%rdi
  40107b:	75 da                	jne    401057 <initialize_target+0xc7>
  40107d:	b8 00 00 00 00       	mov    $0x0,%eax
  401082:	eb 05                	jmp    401089 <initialize_target+0xf9>
  401084:	b8 01 00 00 00       	mov    $0x1,%eax
  401089:	85 c0                	test   %eax,%eax
  40108b:	75 17                	jne    4010a4 <initialize_target+0x114>
  40108d:	48 89 e6             	mov    %rsp,%rsi
  401090:	bf 28 2d 40 00       	mov    $0x402d28,%edi
  401095:	e8 e6 fb ff ff       	callq  400c80 <printf@plt>
  40109a:	bf 08 00 00 00       	mov    $0x8,%edi
  40109f:	e8 4c fd ff ff       	callq  400df0 <exit@plt>
  4010a4:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4010ab:	00 
  4010ac:	e8 39 18 00 00       	callq  4028ea <init_driver>
  4010b1:	85 c0                	test   %eax,%eax
  4010b3:	79 21                	jns    4010d6 <initialize_target+0x146>
  4010b5:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  4010bc:	00 
  4010bd:	bf 68 2d 40 00       	mov    $0x402d68,%edi
  4010c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4010c7:	e8 b4 fb ff ff       	callq  400c80 <printf@plt>
  4010cc:	bf 08 00 00 00       	mov    $0x8,%edi
  4010d1:	e8 1a fd ff ff       	callq  400df0 <exit@plt>
  4010d6:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  4010dd:	5b                   	pop    %rbx
  4010de:	5d                   	pop    %rbp
  4010df:	c3                   	retq   

00000000004010e0 <main>:
  4010e0:	41 56                	push   %r14
  4010e2:	41 55                	push   %r13
  4010e4:	41 54                	push   %r12
  4010e6:	55                   	push   %rbp
  4010e7:	53                   	push   %rbx
  4010e8:	41 89 fc             	mov    %edi,%r12d
  4010eb:	48 89 f3             	mov    %rsi,%rbx
  4010ee:	be 11 1d 40 00       	mov    $0x401d11,%esi
  4010f3:	bf 0b 00 00 00       	mov    $0xb,%edi
  4010f8:	e8 e3 fb ff ff       	callq  400ce0 <signal@plt>
  4010fd:	be c3 1c 40 00       	mov    $0x401cc3,%esi
  401102:	bf 07 00 00 00       	mov    $0x7,%edi
  401107:	e8 d4 fb ff ff       	callq  400ce0 <signal@plt>
  40110c:	be 5f 1d 40 00       	mov    $0x401d5f,%esi
  401111:	bf 04 00 00 00       	mov    $0x4,%edi
  401116:	e8 c5 fb ff ff       	callq  400ce0 <signal@plt>
  40111b:	83 3d e6 33 20 00 00 	cmpl   $0x0,0x2033e6(%rip)        # 604508 <is_checker>
  401122:	74 20                	je     401144 <main+0x64>
  401124:	be ad 1d 40 00       	mov    $0x401dad,%esi
  401129:	bf 0e 00 00 00       	mov    $0xe,%edi
  40112e:	e8 ad fb ff ff       	callq  400ce0 <signal@plt>
  401133:	bf 05 00 00 00       	mov    $0x5,%edi
  401138:	e8 63 fb ff ff       	callq  400ca0 <alarm@plt>
  40113d:	bd 32 2e 40 00       	mov    $0x402e32,%ebp
  401142:	eb 05                	jmp    401149 <main+0x69>
  401144:	bd 2d 2e 40 00       	mov    $0x402e2d,%ebp
  401149:	48 8b 05 70 33 20 00 	mov    0x203370(%rip),%rax        # 6044c0 <stdin@@GLIBC_2.2.5>
  401150:	48 89 05 99 33 20 00 	mov    %rax,0x203399(%rip)        # 6044f0 <infile>
  401157:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40115d:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401163:	e9 b9 00 00 00       	jmpq   401221 <main+0x141>
  401168:	83 e8 61             	sub    $0x61,%eax
  40116b:	3c 10                	cmp    $0x10,%al
  40116d:	0f 87 93 00 00 00    	ja     401206 <main+0x126>
  401173:	0f b6 c0             	movzbl %al,%eax
  401176:	ff 24 c5 78 2e 40 00 	jmpq   *0x402e78(,%rax,8)
  40117d:	48 8b 3b             	mov    (%rbx),%rdi
  401180:	e8 8b fd ff ff       	callq  400f10 <usage>
  401185:	be d5 30 40 00       	mov    $0x4030d5,%esi
  40118a:	48 8b 3d 37 33 20 00 	mov    0x203337(%rip),%rdi        # 6044c8 <optarg@@GLIBC_2.2.5>
  401191:	e8 0a fc ff ff       	callq  400da0 <fopen@plt>
  401196:	48 89 05 53 33 20 00 	mov    %rax,0x203353(%rip)        # 6044f0 <infile>
  40119d:	48 85 c0             	test   %rax,%rax
  4011a0:	75 7f                	jne    401221 <main+0x141>
  4011a2:	48 8b 15 1f 33 20 00 	mov    0x20331f(%rip),%rdx        # 6044c8 <optarg@@GLIBC_2.2.5>
  4011a9:	be 3a 2e 40 00       	mov    $0x402e3a,%esi
  4011ae:	48 8b 3d 1b 33 20 00 	mov    0x20331b(%rip),%rdi        # 6044d0 <stderr@@GLIBC_2.2.5>
  4011b5:	e8 46 fb ff ff       	callq  400d00 <fprintf@plt>
  4011ba:	b8 01 00 00 00       	mov    $0x1,%eax
  4011bf:	e9 d6 00 00 00       	jmpq   40129a <main+0x1ba>
  4011c4:	ba 10 00 00 00       	mov    $0x10,%edx
  4011c9:	be 00 00 00 00       	mov    $0x0,%esi
  4011ce:	48 8b 3d f3 32 20 00 	mov    0x2032f3(%rip),%rdi        # 6044c8 <optarg@@GLIBC_2.2.5>
  4011d5:	e8 e6 fb ff ff       	callq  400dc0 <strtoul@plt>
  4011da:	41 89 c6             	mov    %eax,%r14d
  4011dd:	eb 42                	jmp    401221 <main+0x141>
  4011df:	ba 0a 00 00 00       	mov    $0xa,%edx
  4011e4:	be 00 00 00 00       	mov    $0x0,%esi
  4011e9:	48 8b 3d d8 32 20 00 	mov    0x2032d8(%rip),%rdi        # 6044c8 <optarg@@GLIBC_2.2.5>
  4011f0:	e8 2b fb ff ff       	callq  400d20 <strtol@plt>
  4011f5:	41 89 c5             	mov    %eax,%r13d
  4011f8:	eb 27                	jmp    401221 <main+0x141>
  4011fa:	c7 05 a4 32 20 00 00 	movl   $0x0,0x2032a4(%rip)        # 6044a8 <notify>
  401201:	00 00 00 
  401204:	eb 1b                	jmp    401221 <main+0x141>
  401206:	40 0f be f6          	movsbl %sil,%esi
  40120a:	bf 57 2e 40 00       	mov    $0x402e57,%edi
  40120f:	b8 00 00 00 00       	mov    $0x0,%eax
  401214:	e8 67 fa ff ff       	callq  400c80 <printf@plt>
  401219:	48 8b 3b             	mov    (%rbx),%rdi
  40121c:	e8 ef fc ff ff       	callq  400f10 <usage>
  401221:	48 89 ea             	mov    %rbp,%rdx
  401224:	48 89 de             	mov    %rbx,%rsi
  401227:	44 89 e7             	mov    %r12d,%edi
  40122a:	e8 81 fb ff ff       	callq  400db0 <getopt@plt>
  40122f:	89 c6                	mov    %eax,%esi
  401231:	3c ff                	cmp    $0xff,%al
  401233:	0f 85 2f ff ff ff    	jne    401168 <main+0x88>
  401239:	be 00 00 00 00       	mov    $0x0,%esi
  40123e:	44 89 ef             	mov    %r13d,%edi
  401241:	e8 4a fd ff ff       	callq  400f90 <initialize_target>
  401246:	83 3d bb 32 20 00 00 	cmpl   $0x0,0x2032bb(%rip)        # 604508 <is_checker>
  40124d:	74 25                	je     401274 <main+0x194>
  40124f:	44 3b 35 aa 32 20 00 	cmp    0x2032aa(%rip),%r14d        # 604500 <authkey>
  401256:	74 1c                	je     401274 <main+0x194>
  401258:	44 89 f6             	mov    %r14d,%esi
  40125b:	bf 90 2d 40 00       	mov    $0x402d90,%edi
  401260:	b8 00 00 00 00       	mov    $0x0,%eax
  401265:	e8 16 fa ff ff       	callq  400c80 <printf@plt>
  40126a:	b8 00 00 00 00       	mov    $0x0,%eax
  40126f:	e8 57 07 00 00       	callq  4019cb <check_fail>
  401274:	8b 35 8a 32 20 00    	mov    0x20328a(%rip),%esi        # 604504 <cookie>
  40127a:	bf 6a 2e 40 00       	mov    $0x402e6a,%edi
  40127f:	b8 00 00 00 00       	mov    $0x0,%eax
  401284:	e8 f7 f9 ff ff       	callq  400c80 <printf@plt>
  401289:	48 8b 3d 10 32 20 00 	mov    0x203210(%rip),%rdi        # 6044a0 <buf_offset>
  401290:	e8 e7 0b 00 00       	callq  401e7c <stable_launch>
  401295:	b8 00 00 00 00       	mov    $0x0,%eax
  40129a:	5b                   	pop    %rbx
  40129b:	5d                   	pop    %rbp
  40129c:	41 5c                	pop    %r12
  40129e:	41 5d                	pop    %r13
  4012a0:	41 5e                	pop    %r14
  4012a2:	c3                   	retq   

00000000004012a3 <scramble>:
  4012a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4012a8:	eb 11                	jmp    4012bb <scramble+0x18>
  4012aa:	69 c8 10 03 00 00    	imul   $0x310,%eax,%ecx
  4012b0:	01 f9                	add    %edi,%ecx
  4012b2:	89 c2                	mov    %eax,%edx
  4012b4:	89 4c 94 d0          	mov    %ecx,-0x30(%rsp,%rdx,4)
  4012b8:	83 c0 01             	add    $0x1,%eax
  4012bb:	83 f8 09             	cmp    $0x9,%eax
  4012be:	76 ea                	jbe    4012aa <scramble+0x7>
  4012c0:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4012c4:	69 c0 de cf 00 00    	imul   $0xcfde,%eax,%eax
  4012ca:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4012ce:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4012d2:	69 c0 4c a8 00 00    	imul   $0xa84c,%eax,%eax
  4012d8:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4012dc:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4012e0:	69 c0 24 be 00 00    	imul   $0xbe24,%eax,%eax
  4012e6:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4012ea:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4012ee:	69 c0 f7 2d 00 00    	imul   $0x2df7,%eax,%eax
  4012f4:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4012f8:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4012fc:	69 c0 34 f1 00 00    	imul   $0xf134,%eax,%eax
  401302:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401306:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40130a:	69 c0 19 d6 00 00    	imul   $0xd619,%eax,%eax
  401310:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401314:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401318:	69 c0 86 fa 00 00    	imul   $0xfa86,%eax,%eax
  40131e:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401322:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401326:	69 c0 51 ab 00 00    	imul   $0xab51,%eax,%eax
  40132c:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401330:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401334:	69 c0 2e c3 00 00    	imul   $0xc32e,%eax,%eax
  40133a:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40133e:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401342:	69 c0 56 e7 00 00    	imul   $0xe756,%eax,%eax
  401348:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40134c:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401350:	69 c0 ad 73 00 00    	imul   $0x73ad,%eax,%eax
  401356:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40135a:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40135e:	69 c0 1e d3 00 00    	imul   $0xd31e,%eax,%eax
  401364:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401368:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40136c:	69 c0 77 fe 00 00    	imul   $0xfe77,%eax,%eax
  401372:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401376:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40137a:	69 c0 43 e8 00 00    	imul   $0xe843,%eax,%eax
  401380:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401384:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401388:	69 c0 4b a9 00 00    	imul   $0xa94b,%eax,%eax
  40138e:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401392:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401396:	69 c0 82 5f 00 00    	imul   $0x5f82,%eax,%eax
  40139c:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4013a0:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4013a4:	69 c0 3e 9d 00 00    	imul   $0x9d3e,%eax,%eax
  4013aa:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4013ae:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4013b2:	69 c0 8c f6 00 00    	imul   $0xf68c,%eax,%eax
  4013b8:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4013bc:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4013c0:	69 c0 12 86 00 00    	imul   $0x8612,%eax,%eax
  4013c6:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4013ca:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4013ce:	69 c0 57 6b 00 00    	imul   $0x6b57,%eax,%eax
  4013d4:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4013d8:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4013dc:	69 c0 62 90 00 00    	imul   $0x9062,%eax,%eax
  4013e2:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4013e6:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4013ea:	69 c0 4d f3 00 00    	imul   $0xf34d,%eax,%eax
  4013f0:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4013f4:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4013f8:	69 c0 b8 c4 00 00    	imul   $0xc4b8,%eax,%eax
  4013fe:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401402:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401406:	69 c0 d4 6c 00 00    	imul   $0x6cd4,%eax,%eax
  40140c:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401410:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401414:	69 c0 83 87 00 00    	imul   $0x8783,%eax,%eax
  40141a:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40141e:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401422:	69 c0 be c0 00 00    	imul   $0xc0be,%eax,%eax
  401428:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40142c:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401430:	69 c0 ed a1 00 00    	imul   $0xa1ed,%eax,%eax
  401436:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40143a:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40143e:	69 c0 d2 60 00 00    	imul   $0x60d2,%eax,%eax
  401444:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401448:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40144c:	69 c0 aa c7 00 00    	imul   $0xc7aa,%eax,%eax
  401452:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401456:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40145a:	69 c0 d6 fc 00 00    	imul   $0xfcd6,%eax,%eax
  401460:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401464:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401468:	69 c0 df 3e 00 00    	imul   $0x3edf,%eax,%eax
  40146e:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401472:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401476:	69 c0 20 ea 00 00    	imul   $0xea20,%eax,%eax
  40147c:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401480:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401484:	69 c0 26 64 00 00    	imul   $0x6426,%eax,%eax
  40148a:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40148e:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401492:	69 c0 80 37 00 00    	imul   $0x3780,%eax,%eax
  401498:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40149c:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4014a0:	69 c0 2f 05 00 00    	imul   $0x52f,%eax,%eax
  4014a6:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4014aa:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4014ae:	69 c0 80 61 00 00    	imul   $0x6180,%eax,%eax
  4014b4:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4014b8:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4014bc:	69 c0 48 e4 00 00    	imul   $0xe448,%eax,%eax
  4014c2:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4014c6:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4014ca:	69 c0 79 20 00 00    	imul   $0x2079,%eax,%eax
  4014d0:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4014d4:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4014d8:	69 c0 6b f3 00 00    	imul   $0xf36b,%eax,%eax
  4014de:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4014e2:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4014e6:	69 c0 e6 30 00 00    	imul   $0x30e6,%eax,%eax
  4014ec:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4014f0:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4014f4:	69 c0 78 e1 00 00    	imul   $0xe178,%eax,%eax
  4014fa:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4014fe:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401502:	69 c0 1e 76 00 00    	imul   $0x761e,%eax,%eax
  401508:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40150c:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401510:	69 c0 80 85 00 00    	imul   $0x8580,%eax,%eax
  401516:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40151a:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40151e:	69 c0 ca 23 00 00    	imul   $0x23ca,%eax,%eax
  401524:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401528:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40152c:	69 c0 06 20 00 00    	imul   $0x2006,%eax,%eax
  401532:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401536:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40153a:	69 c0 21 be 00 00    	imul   $0xbe21,%eax,%eax
  401540:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401544:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401548:	69 c0 f8 7c 00 00    	imul   $0x7cf8,%eax,%eax
  40154e:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401552:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401556:	69 c0 02 3b 00 00    	imul   $0x3b02,%eax,%eax
  40155c:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401560:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401564:	69 c0 ed 88 00 00    	imul   $0x88ed,%eax,%eax
  40156a:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40156e:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401572:	69 c0 57 cb 00 00    	imul   $0xcb57,%eax,%eax
  401578:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40157c:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401580:	69 c0 5a 15 00 00    	imul   $0x155a,%eax,%eax
  401586:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40158a:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40158e:	69 c0 ad 23 00 00    	imul   $0x23ad,%eax,%eax
  401594:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401598:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40159c:	69 c0 a4 81 00 00    	imul   $0x81a4,%eax,%eax
  4015a2:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4015a6:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4015aa:	69 c0 a2 a2 00 00    	imul   $0xa2a2,%eax,%eax
  4015b0:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4015b4:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015b8:	69 c0 73 d1 00 00    	imul   $0xd173,%eax,%eax
  4015be:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4015c2:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015c6:	69 c0 fe ef 00 00    	imul   $0xeffe,%eax,%eax
  4015cc:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4015d0:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4015d4:	69 c0 2d c5 00 00    	imul   $0xc52d,%eax,%eax
  4015da:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4015de:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4015e2:	69 c0 51 36 00 00    	imul   $0x3651,%eax,%eax
  4015e8:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4015ec:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015f0:	69 c0 0d 3d 00 00    	imul   $0x3d0d,%eax,%eax
  4015f6:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4015fa:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4015fe:	69 c0 d9 97 00 00    	imul   $0x97d9,%eax,%eax
  401604:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401608:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40160c:	69 c0 bb 7a 00 00    	imul   $0x7abb,%eax,%eax
  401612:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401616:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40161a:	69 c0 f8 bb 00 00    	imul   $0xbbf8,%eax,%eax
  401620:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401624:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401628:	69 c0 3b fe 00 00    	imul   $0xfe3b,%eax,%eax
  40162e:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401632:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401636:	69 c0 d2 d8 00 00    	imul   $0xd8d2,%eax,%eax
  40163c:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401640:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401644:	69 c0 7e 69 00 00    	imul   $0x697e,%eax,%eax
  40164a:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40164e:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401652:	69 c0 44 15 00 00    	imul   $0x1544,%eax,%eax
  401658:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40165c:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401660:	69 c0 01 d1 00 00    	imul   $0xd101,%eax,%eax
  401666:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40166a:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40166e:	69 c0 7b 78 00 00    	imul   $0x787b,%eax,%eax
  401674:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401678:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40167c:	69 c0 17 7d 00 00    	imul   $0x7d17,%eax,%eax
  401682:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401686:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40168a:	69 c0 b5 c7 00 00    	imul   $0xc7b5,%eax,%eax
  401690:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401694:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401698:	69 c0 a6 ee 00 00    	imul   $0xeea6,%eax,%eax
  40169e:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016a2:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016a6:	69 c0 76 01 00 00    	imul   $0x176,%eax,%eax
  4016ac:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016b0:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4016b4:	69 c0 d1 1d 00 00    	imul   $0x1dd1,%eax,%eax
  4016ba:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4016be:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016c2:	69 c0 82 fe 00 00    	imul   $0xfe82,%eax,%eax
  4016c8:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016cc:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4016d0:	69 c0 e3 91 00 00    	imul   $0x91e3,%eax,%eax
  4016d6:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4016da:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016de:	69 c0 f2 b7 00 00    	imul   $0xb7f2,%eax,%eax
  4016e4:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016e8:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016ec:	69 c0 55 ec 00 00    	imul   $0xec55,%eax,%eax
  4016f2:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016f6:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4016fa:	69 c0 52 04 00 00    	imul   $0x452,%eax,%eax
  401700:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401704:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401708:	69 c0 e5 6a 00 00    	imul   $0x6ae5,%eax,%eax
  40170e:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401712:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401716:	69 c0 b8 71 00 00    	imul   $0x71b8,%eax,%eax
  40171c:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401720:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401724:	69 c0 4e 81 00 00    	imul   $0x814e,%eax,%eax
  40172a:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40172e:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401732:	69 c0 3c 53 00 00    	imul   $0x533c,%eax,%eax
  401738:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40173c:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401740:	69 c0 ed bf 00 00    	imul   $0xbfed,%eax,%eax
  401746:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40174a:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40174e:	69 c0 f4 a4 00 00    	imul   $0xa4f4,%eax,%eax
  401754:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401758:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40175c:	69 c0 d4 e6 00 00    	imul   $0xe6d4,%eax,%eax
  401762:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401766:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40176a:	69 c0 8e 8b 00 00    	imul   $0x8b8e,%eax,%eax
  401770:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401774:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401778:	69 c0 5e 24 00 00    	imul   $0x245e,%eax,%eax
  40177e:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401782:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401786:	69 c0 4f 89 00 00    	imul   $0x894f,%eax,%eax
  40178c:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401790:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401794:	69 c0 cd c4 00 00    	imul   $0xc4cd,%eax,%eax
  40179a:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40179e:	ba 00 00 00 00       	mov    $0x0,%edx
  4017a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4017a8:	eb 0b                	jmp    4017b5 <scramble+0x512>
  4017aa:	89 d1                	mov    %edx,%ecx
  4017ac:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  4017b0:	01 c8                	add    %ecx,%eax
  4017b2:	83 c2 01             	add    $0x1,%edx
  4017b5:	83 fa 09             	cmp    $0x9,%edx
  4017b8:	76 f0                	jbe    4017aa <scramble+0x507>
  4017ba:	f3 c3                	repz retq 

00000000004017bc <getbuf>:
  4017bc:	48 83 ec 38          	sub    $0x38,%rsp
  4017c0:	48 89 e7             	mov    %rsp,%rdi
  4017c3:	e8 32 02 00 00       	callq  4019fa <Gets>
  4017c8:	b8 01 00 00 00       	mov    $0x1,%eax
  4017cd:	48 83 c4 38          	add    $0x38,%rsp
  4017d1:	c3                   	retq   

00000000004017d2 <touch1>:
  4017d2:	48 83 ec 08          	sub    $0x8,%rsp
  4017d6:	c7 05 1c 2d 20 00 01 	movl   $0x1,0x202d1c(%rip)        # 6044fc <vlevel>
  4017dd:	00 00 00 
  4017e0:	bf 28 2f 40 00       	mov    $0x402f28,%edi
  4017e5:	e8 66 f4 ff ff       	callq  400c50 <puts@plt>
  4017ea:	bf 01 00 00 00       	mov    $0x1,%edi
  4017ef:	e8 f5 03 00 00       	callq  401be9 <validate>
  4017f4:	bf 00 00 00 00       	mov    $0x0,%edi
  4017f9:	e8 f2 f5 ff ff       	callq  400df0 <exit@plt>

00000000004017fe <touch2>:
  4017fe:	48 83 ec 08          	sub    $0x8,%rsp
  401802:	89 fe                	mov    %edi,%esi
  401804:	c7 05 ee 2c 20 00 02 	movl   $0x2,0x202cee(%rip)        # 6044fc <vlevel>
  40180b:	00 00 00 
  40180e:	3b 3d f0 2c 20 00    	cmp    0x202cf0(%rip),%edi        # 604504 <cookie>
  401814:	75 1b                	jne    401831 <touch2+0x33>
  401816:	bf 50 2f 40 00       	mov    $0x402f50,%edi
  40181b:	b8 00 00 00 00       	mov    $0x0,%eax
  401820:	e8 5b f4 ff ff       	callq  400c80 <printf@plt>
  401825:	bf 02 00 00 00       	mov    $0x2,%edi
  40182a:	e8 ba 03 00 00       	callq  401be9 <validate>
  40182f:	eb 19                	jmp    40184a <touch2+0x4c>
  401831:	bf 78 2f 40 00       	mov    $0x402f78,%edi
  401836:	b8 00 00 00 00       	mov    $0x0,%eax
  40183b:	e8 40 f4 ff ff       	callq  400c80 <printf@plt>
  401840:	bf 02 00 00 00       	mov    $0x2,%edi
  401845:	e8 51 04 00 00       	callq  401c9b <fail>
  40184a:	bf 00 00 00 00       	mov    $0x0,%edi
  40184f:	e8 9c f5 ff ff       	callq  400df0 <exit@plt>

0000000000401854 <hexmatch>:
  401854:	41 54                	push   %r12
  401856:	55                   	push   %rbp
  401857:	53                   	push   %rbx
  401858:	48 83 ec 70          	sub    $0x70,%rsp
  40185c:	41 89 fc             	mov    %edi,%r12d
  40185f:	48 89 f5             	mov    %rsi,%rbp
  401862:	e8 e9 f4 ff ff       	callq  400d50 <random@plt>
  401867:	48 89 c1             	mov    %rax,%rcx
  40186a:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401871:	0a d7 a3 
  401874:	48 f7 ea             	imul   %rdx
  401877:	48 8d 04 0a          	lea    (%rdx,%rcx,1),%rax
  40187b:	48 c1 f8 06          	sar    $0x6,%rax
  40187f:	48 89 ce             	mov    %rcx,%rsi
  401882:	48 c1 fe 3f          	sar    $0x3f,%rsi
  401886:	48 29 f0             	sub    %rsi,%rax
  401889:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40188d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401891:	48 c1 e0 02          	shl    $0x2,%rax
  401895:	48 29 c1             	sub    %rax,%rcx
  401898:	48 8d 1c 0c          	lea    (%rsp,%rcx,1),%rbx
  40189c:	44 89 e2             	mov    %r12d,%edx
  40189f:	be 45 2f 40 00       	mov    $0x402f45,%esi
  4018a4:	48 89 df             	mov    %rbx,%rdi
  4018a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4018ac:	e8 2f f5 ff ff       	callq  400de0 <sprintf@plt>
  4018b1:	ba 09 00 00 00       	mov    $0x9,%edx
  4018b6:	48 89 de             	mov    %rbx,%rsi
  4018b9:	48 89 ef             	mov    %rbp,%rdi
  4018bc:	e8 6f f3 ff ff       	callq  400c30 <strncmp@plt>
  4018c1:	85 c0                	test   %eax,%eax
  4018c3:	0f 94 c0             	sete   %al
  4018c6:	0f b6 c0             	movzbl %al,%eax
  4018c9:	48 83 c4 70          	add    $0x70,%rsp
  4018cd:	5b                   	pop    %rbx
  4018ce:	5d                   	pop    %rbp
  4018cf:	41 5c                	pop    %r12
  4018d1:	c3                   	retq   

00000000004018d2 <touch3>:
  4018d2:	53                   	push   %rbx
  4018d3:	48 89 fb             	mov    %rdi,%rbx
  4018d6:	c7 05 1c 2c 20 00 03 	movl   $0x3,0x202c1c(%rip)        # 6044fc <vlevel>
  4018dd:	00 00 00 
  4018e0:	48 89 fe             	mov    %rdi,%rsi
  4018e3:	8b 3d 1b 2c 20 00    	mov    0x202c1b(%rip),%edi        # 604504 <cookie>
  4018e9:	e8 66 ff ff ff       	callq  401854 <hexmatch>
  4018ee:	85 c0                	test   %eax,%eax
  4018f0:	74 1e                	je     401910 <touch3+0x3e>
  4018f2:	48 89 de             	mov    %rbx,%rsi
  4018f5:	bf a0 2f 40 00       	mov    $0x402fa0,%edi
  4018fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4018ff:	e8 7c f3 ff ff       	callq  400c80 <printf@plt>
  401904:	bf 03 00 00 00       	mov    $0x3,%edi
  401909:	e8 db 02 00 00       	callq  401be9 <validate>
  40190e:	eb 1c                	jmp    40192c <touch3+0x5a>
  401910:	48 89 de             	mov    %rbx,%rsi
  401913:	bf c8 2f 40 00       	mov    $0x402fc8,%edi
  401918:	b8 00 00 00 00       	mov    $0x0,%eax
  40191d:	e8 5e f3 ff ff       	callq  400c80 <printf@plt>
  401922:	bf 03 00 00 00       	mov    $0x3,%edi
  401927:	e8 6f 03 00 00       	callq  401c9b <fail>
  40192c:	bf 00 00 00 00       	mov    $0x0,%edi
  401931:	e8 ba f4 ff ff       	callq  400df0 <exit@plt>

0000000000401936 <test>:
  401936:	48 83 ec 08          	sub    $0x8,%rsp
  40193a:	b8 00 00 00 00       	mov    $0x0,%eax
  40193f:	e8 78 fe ff ff       	callq  4017bc <getbuf>
  401944:	89 c6                	mov    %eax,%esi
  401946:	bf f0 2f 40 00       	mov    $0x402ff0,%edi
  40194b:	b8 00 00 00 00       	mov    $0x0,%eax
  401950:	e8 2b f3 ff ff       	callq  400c80 <printf@plt>
  401955:	48 83 c4 08          	add    $0x8,%rsp
  401959:	c3                   	retq   
  40195a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401960 <save_char>:
  401960:	8b 05 be 37 20 00    	mov    0x2037be(%rip),%eax        # 605124 <gets_cnt>
  401966:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  40196b:	7f 49                	jg     4019b6 <save_char+0x56>
  40196d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401970:	89 f9                	mov    %edi,%ecx
  401972:	c0 e9 04             	shr    $0x4,%cl
  401975:	83 e1 0f             	and    $0xf,%ecx
  401978:	0f b6 b1 10 33 40 00 	movzbl 0x403310(%rcx),%esi
  40197f:	48 63 ca             	movslq %edx,%rcx
  401982:	40 88 b1 20 45 60 00 	mov    %sil,0x604520(%rcx)
  401989:	8d 4a 01             	lea    0x1(%rdx),%ecx
  40198c:	83 e7 0f             	and    $0xf,%edi
  40198f:	0f b6 b7 10 33 40 00 	movzbl 0x403310(%rdi),%esi
  401996:	48 63 c9             	movslq %ecx,%rcx
  401999:	40 88 b1 20 45 60 00 	mov    %sil,0x604520(%rcx)
  4019a0:	83 c2 02             	add    $0x2,%edx
  4019a3:	48 63 d2             	movslq %edx,%rdx
  4019a6:	c6 82 20 45 60 00 20 	movb   $0x20,0x604520(%rdx)
  4019ad:	83 c0 01             	add    $0x1,%eax
  4019b0:	89 05 6e 37 20 00    	mov    %eax,0x20376e(%rip)        # 605124 <gets_cnt>
  4019b6:	f3 c3                	repz retq 

00000000004019b8 <save_term>:
  4019b8:	8b 05 66 37 20 00    	mov    0x203766(%rip),%eax        # 605124 <gets_cnt>
  4019be:	8d 04 40             	lea    (%rax,%rax,2),%eax
  4019c1:	48 98                	cltq   
  4019c3:	c6 80 20 45 60 00 00 	movb   $0x0,0x604520(%rax)
  4019ca:	c3                   	retq   

00000000004019cb <check_fail>:
  4019cb:	48 83 ec 08          	sub    $0x8,%rsp
  4019cf:	0f be 35 52 37 20 00 	movsbl 0x203752(%rip),%esi        # 605128 <target_prefix>
  4019d6:	b9 20 45 60 00       	mov    $0x604520,%ecx
  4019db:	8b 15 17 2b 20 00    	mov    0x202b17(%rip),%edx        # 6044f8 <check_level>
  4019e1:	bf 13 30 40 00       	mov    $0x403013,%edi
  4019e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019eb:	e8 90 f2 ff ff       	callq  400c80 <printf@plt>
  4019f0:	bf 01 00 00 00       	mov    $0x1,%edi
  4019f5:	e8 f6 f3 ff ff       	callq  400df0 <exit@plt>

00000000004019fa <Gets>:
  4019fa:	41 54                	push   %r12
  4019fc:	55                   	push   %rbp
  4019fd:	53                   	push   %rbx
  4019fe:	49 89 fc             	mov    %rdi,%r12
  401a01:	c7 05 19 37 20 00 00 	movl   $0x0,0x203719(%rip)        # 605124 <gets_cnt>
  401a08:	00 00 00 
  401a0b:	48 89 fb             	mov    %rdi,%rbx
  401a0e:	eb 11                	jmp    401a21 <Gets+0x27>
  401a10:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401a14:	88 03                	mov    %al,(%rbx)
  401a16:	0f b6 f8             	movzbl %al,%edi
  401a19:	e8 42 ff ff ff       	callq  401960 <save_char>
  401a1e:	48 89 eb             	mov    %rbp,%rbx
  401a21:	48 8b 3d c8 2a 20 00 	mov    0x202ac8(%rip),%rdi        # 6044f0 <infile>
  401a28:	e8 33 f3 ff ff       	callq  400d60 <_IO_getc@plt>
  401a2d:	83 f8 ff             	cmp    $0xffffffff,%eax
  401a30:	74 05                	je     401a37 <Gets+0x3d>
  401a32:	83 f8 0a             	cmp    $0xa,%eax
  401a35:	75 d9                	jne    401a10 <Gets+0x16>
  401a37:	c6 03 00             	movb   $0x0,(%rbx)
  401a3a:	b8 00 00 00 00       	mov    $0x0,%eax
  401a3f:	e8 74 ff ff ff       	callq  4019b8 <save_term>
  401a44:	4c 89 e0             	mov    %r12,%rax
  401a47:	5b                   	pop    %rbx
  401a48:	5d                   	pop    %rbp
  401a49:	41 5c                	pop    %r12
  401a4b:	c3                   	retq   

0000000000401a4c <notify_server>:
  401a4c:	83 3d b5 2a 20 00 00 	cmpl   $0x0,0x202ab5(%rip)        # 604508 <is_checker>
  401a53:	0f 85 8e 01 00 00    	jne    401be7 <notify_server+0x19b>
  401a59:	53                   	push   %rbx
  401a5a:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401a61:	89 fb                	mov    %edi,%ebx
  401a63:	8b 05 bb 36 20 00    	mov    0x2036bb(%rip),%eax        # 605124 <gets_cnt>
  401a69:	83 c0 64             	add    $0x64,%eax
  401a6c:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401a71:	7e 19                	jle    401a8c <notify_server+0x40>
  401a73:	bf 48 31 40 00       	mov    $0x403148,%edi
  401a78:	b8 00 00 00 00       	mov    $0x0,%eax
  401a7d:	e8 fe f1 ff ff       	callq  400c80 <printf@plt>
  401a82:	bf 01 00 00 00       	mov    $0x1,%edi
  401a87:	e8 64 f3 ff ff       	callq  400df0 <exit@plt>
  401a8c:	44 0f be 0d 94 36 20 	movsbl 0x203694(%rip),%r9d        # 605128 <target_prefix>
  401a93:	00 
  401a94:	83 3d 0d 2a 20 00 00 	cmpl   $0x0,0x202a0d(%rip)        # 6044a8 <notify>
  401a9b:	74 09                	je     401aa6 <notify_server+0x5a>
  401a9d:	44 8b 05 5c 2a 20 00 	mov    0x202a5c(%rip),%r8d        # 604500 <authkey>
  401aa4:	eb 06                	jmp    401aac <notify_server+0x60>
  401aa6:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401aac:	85 db                	test   %ebx,%ebx
  401aae:	74 07                	je     401ab7 <notify_server+0x6b>
  401ab0:	b9 29 30 40 00       	mov    $0x403029,%ecx
  401ab5:	eb 05                	jmp    401abc <notify_server+0x70>
  401ab7:	b9 2e 30 40 00       	mov    $0x40302e,%ecx
  401abc:	48 c7 44 24 08 20 45 	movq   $0x604520,0x8(%rsp)
  401ac3:	60 00 
  401ac5:	89 34 24             	mov    %esi,(%rsp)
  401ac8:	8b 15 9a 26 20 00    	mov    0x20269a(%rip),%edx        # 604168 <target_id>
  401ace:	be 33 30 40 00       	mov    $0x403033,%esi
  401ad3:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  401ada:	00 
  401adb:	b8 00 00 00 00       	mov    $0x0,%eax
  401ae0:	e8 fb f2 ff ff       	callq  400de0 <sprintf@plt>
  401ae5:	83 3d bc 29 20 00 00 	cmpl   $0x0,0x2029bc(%rip)        # 6044a8 <notify>
  401aec:	74 78                	je     401b66 <notify_server+0x11a>
  401aee:	85 db                	test   %ebx,%ebx
  401af0:	74 68                	je     401b5a <notify_server+0x10e>
  401af2:	4c 8d 4c 24 10       	lea    0x10(%rsp),%r9
  401af7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401afd:	48 8d 8c 24 10 20 00 	lea    0x2010(%rsp),%rcx
  401b04:	00 
  401b05:	48 8b 15 64 26 20 00 	mov    0x202664(%rip),%rdx        # 604170 <lab>
  401b0c:	48 8b 35 65 26 20 00 	mov    0x202665(%rip),%rsi        # 604178 <course>
  401b13:	48 8b 3d 46 26 20 00 	mov    0x202646(%rip),%rdi        # 604160 <user_id>
  401b1a:	e8 94 0f 00 00       	callq  402ab3 <driver_post>
  401b1f:	85 c0                	test   %eax,%eax
  401b21:	79 1e                	jns    401b41 <notify_server+0xf5>
  401b23:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  401b28:	bf 4f 30 40 00       	mov    $0x40304f,%edi
  401b2d:	b8 00 00 00 00       	mov    $0x0,%eax
  401b32:	e8 49 f1 ff ff       	callq  400c80 <printf@plt>
  401b37:	bf 01 00 00 00       	mov    $0x1,%edi
  401b3c:	e8 af f2 ff ff       	callq  400df0 <exit@plt>
  401b41:	bf 78 31 40 00       	mov    $0x403178,%edi
  401b46:	e8 05 f1 ff ff       	callq  400c50 <puts@plt>
  401b4b:	bf 5b 30 40 00       	mov    $0x40305b,%edi
  401b50:	e8 fb f0 ff ff       	callq  400c50 <puts@plt>
  401b55:	e9 85 00 00 00       	jmpq   401bdf <notify_server+0x193>
  401b5a:	bf 65 30 40 00       	mov    $0x403065,%edi
  401b5f:	e8 ec f0 ff ff       	callq  400c50 <puts@plt>
  401b64:	eb 79                	jmp    401bdf <notify_server+0x193>
  401b66:	85 db                	test   %ebx,%ebx
  401b68:	74 08                	je     401b72 <notify_server+0x126>
  401b6a:	be 29 30 40 00       	mov    $0x403029,%esi
  401b6f:	90                   	nop
  401b70:	eb 05                	jmp    401b77 <notify_server+0x12b>
  401b72:	be 2e 30 40 00       	mov    $0x40302e,%esi
  401b77:	bf b0 31 40 00       	mov    $0x4031b0,%edi
  401b7c:	b8 00 00 00 00       	mov    $0x0,%eax
  401b81:	e8 fa f0 ff ff       	callq  400c80 <printf@plt>
  401b86:	48 8b 35 d3 25 20 00 	mov    0x2025d3(%rip),%rsi        # 604160 <user_id>
  401b8d:	bf 6c 30 40 00       	mov    $0x40306c,%edi
  401b92:	b8 00 00 00 00       	mov    $0x0,%eax
  401b97:	e8 e4 f0 ff ff       	callq  400c80 <printf@plt>
  401b9c:	48 8b 35 d5 25 20 00 	mov    0x2025d5(%rip),%rsi        # 604178 <course>
  401ba3:	bf 79 30 40 00       	mov    $0x403079,%edi
  401ba8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bad:	e8 ce f0 ff ff       	callq  400c80 <printf@plt>
  401bb2:	48 8b 35 b7 25 20 00 	mov    0x2025b7(%rip),%rsi        # 604170 <lab>
  401bb9:	bf 85 30 40 00       	mov    $0x403085,%edi
  401bbe:	b8 00 00 00 00       	mov    $0x0,%eax
  401bc3:	e8 b8 f0 ff ff       	callq  400c80 <printf@plt>
  401bc8:	48 8d b4 24 10 20 00 	lea    0x2010(%rsp),%rsi
  401bcf:	00 
  401bd0:	bf 8e 30 40 00       	mov    $0x40308e,%edi
  401bd5:	b8 00 00 00 00       	mov    $0x0,%eax
  401bda:	e8 a1 f0 ff ff       	callq  400c80 <printf@plt>
  401bdf:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401be6:	5b                   	pop    %rbx
  401be7:	f3 c3                	repz retq 

0000000000401be9 <validate>:
  401be9:	53                   	push   %rbx
  401bea:	89 fb                	mov    %edi,%ebx
  401bec:	83 3d 15 29 20 00 00 	cmpl   $0x0,0x202915(%rip)        # 604508 <is_checker>
  401bf3:	74 60                	je     401c55 <validate+0x6c>
  401bf5:	39 3d 01 29 20 00    	cmp    %edi,0x202901(%rip)        # 6044fc <vlevel>
  401bfb:	74 14                	je     401c11 <validate+0x28>
  401bfd:	bf 9a 30 40 00       	mov    $0x40309a,%edi
  401c02:	e8 49 f0 ff ff       	callq  400c50 <puts@plt>
  401c07:	b8 00 00 00 00       	mov    $0x0,%eax
  401c0c:	e8 ba fd ff ff       	callq  4019cb <check_fail>
  401c11:	8b 35 e1 28 20 00    	mov    0x2028e1(%rip),%esi        # 6044f8 <check_level>
  401c17:	39 fe                	cmp    %edi,%esi
  401c19:	74 1b                	je     401c36 <validate+0x4d>
  401c1b:	89 fa                	mov    %edi,%edx
  401c1d:	bf d8 31 40 00       	mov    $0x4031d8,%edi
  401c22:	b8 00 00 00 00       	mov    $0x0,%eax
  401c27:	e8 54 f0 ff ff       	callq  400c80 <printf@plt>
  401c2c:	b8 00 00 00 00       	mov    $0x0,%eax
  401c31:	e8 95 fd ff ff       	callq  4019cb <check_fail>
  401c36:	0f be 35 eb 34 20 00 	movsbl 0x2034eb(%rip),%esi        # 605128 <target_prefix>
  401c3d:	b9 20 45 60 00       	mov    $0x604520,%ecx
  401c42:	89 fa                	mov    %edi,%edx
  401c44:	bf b8 30 40 00       	mov    $0x4030b8,%edi
  401c49:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4e:	e8 2d f0 ff ff       	callq  400c80 <printf@plt>
  401c53:	eb 44                	jmp    401c99 <validate+0xb0>
  401c55:	39 3d a1 28 20 00    	cmp    %edi,0x2028a1(%rip)        # 6044fc <vlevel>
  401c5b:	74 18                	je     401c75 <validate+0x8c>
  401c5d:	bf 9a 30 40 00       	mov    $0x40309a,%edi
  401c62:	e8 e9 ef ff ff       	callq  400c50 <puts@plt>
  401c67:	89 de                	mov    %ebx,%esi
  401c69:	bf 00 00 00 00       	mov    $0x0,%edi
  401c6e:	e8 d9 fd ff ff       	callq  401a4c <notify_server>
  401c73:	eb 24                	jmp    401c99 <validate+0xb0>
  401c75:	0f be 15 ac 34 20 00 	movsbl 0x2034ac(%rip),%edx        # 605128 <target_prefix>
  401c7c:	89 fe                	mov    %edi,%esi
  401c7e:	bf 00 32 40 00       	mov    $0x403200,%edi
  401c83:	b8 00 00 00 00       	mov    $0x0,%eax
  401c88:	e8 f3 ef ff ff       	callq  400c80 <printf@plt>
  401c8d:	89 de                	mov    %ebx,%esi
  401c8f:	bf 01 00 00 00       	mov    $0x1,%edi
  401c94:	e8 b3 fd ff ff       	callq  401a4c <notify_server>
  401c99:	5b                   	pop    %rbx
  401c9a:	c3                   	retq   

0000000000401c9b <fail>:
  401c9b:	48 83 ec 08          	sub    $0x8,%rsp
  401c9f:	83 3d 62 28 20 00 00 	cmpl   $0x0,0x202862(%rip)        # 604508 <is_checker>
  401ca6:	74 0a                	je     401cb2 <fail+0x17>
  401ca8:	b8 00 00 00 00       	mov    $0x0,%eax
  401cad:	e8 19 fd ff ff       	callq  4019cb <check_fail>
  401cb2:	89 fe                	mov    %edi,%esi
  401cb4:	bf 00 00 00 00       	mov    $0x0,%edi
  401cb9:	e8 8e fd ff ff       	callq  401a4c <notify_server>
  401cbe:	48 83 c4 08          	add    $0x8,%rsp
  401cc2:	c3                   	retq   

0000000000401cc3 <bushandler>:
  401cc3:	48 83 ec 08          	sub    $0x8,%rsp
  401cc7:	83 3d 3a 28 20 00 00 	cmpl   $0x0,0x20283a(%rip)        # 604508 <is_checker>
  401cce:	74 14                	je     401ce4 <bushandler+0x21>
  401cd0:	bf cd 30 40 00       	mov    $0x4030cd,%edi
  401cd5:	e8 76 ef ff ff       	callq  400c50 <puts@plt>
  401cda:	b8 00 00 00 00       	mov    $0x0,%eax
  401cdf:	e8 e7 fc ff ff       	callq  4019cb <check_fail>
  401ce4:	bf 38 32 40 00       	mov    $0x403238,%edi
  401ce9:	e8 62 ef ff ff       	callq  400c50 <puts@plt>
  401cee:	bf d7 30 40 00       	mov    $0x4030d7,%edi
  401cf3:	e8 58 ef ff ff       	callq  400c50 <puts@plt>
  401cf8:	be 00 00 00 00       	mov    $0x0,%esi
  401cfd:	bf 00 00 00 00       	mov    $0x0,%edi
  401d02:	e8 45 fd ff ff       	callq  401a4c <notify_server>
  401d07:	bf 01 00 00 00       	mov    $0x1,%edi
  401d0c:	e8 df f0 ff ff       	callq  400df0 <exit@plt>

0000000000401d11 <seghandler>:
  401d11:	48 83 ec 08          	sub    $0x8,%rsp
  401d15:	83 3d ec 27 20 00 00 	cmpl   $0x0,0x2027ec(%rip)        # 604508 <is_checker>
  401d1c:	74 14                	je     401d32 <seghandler+0x21>
  401d1e:	bf ed 30 40 00       	mov    $0x4030ed,%edi
  401d23:	e8 28 ef ff ff       	callq  400c50 <puts@plt>
  401d28:	b8 00 00 00 00       	mov    $0x0,%eax
  401d2d:	e8 99 fc ff ff       	callq  4019cb <check_fail>
  401d32:	bf 58 32 40 00       	mov    $0x403258,%edi
  401d37:	e8 14 ef ff ff       	callq  400c50 <puts@plt>
  401d3c:	bf d7 30 40 00       	mov    $0x4030d7,%edi
  401d41:	e8 0a ef ff ff       	callq  400c50 <puts@plt>
  401d46:	be 00 00 00 00       	mov    $0x0,%esi
  401d4b:	bf 00 00 00 00       	mov    $0x0,%edi
  401d50:	e8 f7 fc ff ff       	callq  401a4c <notify_server>
  401d55:	bf 01 00 00 00       	mov    $0x1,%edi
  401d5a:	e8 91 f0 ff ff       	callq  400df0 <exit@plt>

0000000000401d5f <illegalhandler>:
  401d5f:	48 83 ec 08          	sub    $0x8,%rsp
  401d63:	83 3d 9e 27 20 00 00 	cmpl   $0x0,0x20279e(%rip)        # 604508 <is_checker>
  401d6a:	74 14                	je     401d80 <illegalhandler+0x21>
  401d6c:	bf 00 31 40 00       	mov    $0x403100,%edi
  401d71:	e8 da ee ff ff       	callq  400c50 <puts@plt>
  401d76:	b8 00 00 00 00       	mov    $0x0,%eax
  401d7b:	e8 4b fc ff ff       	callq  4019cb <check_fail>
  401d80:	bf 80 32 40 00       	mov    $0x403280,%edi
  401d85:	e8 c6 ee ff ff       	callq  400c50 <puts@plt>
  401d8a:	bf d7 30 40 00       	mov    $0x4030d7,%edi
  401d8f:	e8 bc ee ff ff       	callq  400c50 <puts@plt>
  401d94:	be 00 00 00 00       	mov    $0x0,%esi
  401d99:	bf 00 00 00 00       	mov    $0x0,%edi
  401d9e:	e8 a9 fc ff ff       	callq  401a4c <notify_server>
  401da3:	bf 01 00 00 00       	mov    $0x1,%edi
  401da8:	e8 43 f0 ff ff       	callq  400df0 <exit@plt>

0000000000401dad <sigalrmhandler>:
  401dad:	48 83 ec 08          	sub    $0x8,%rsp
  401db1:	83 3d 50 27 20 00 00 	cmpl   $0x0,0x202750(%rip)        # 604508 <is_checker>
  401db8:	74 14                	je     401dce <sigalrmhandler+0x21>
  401dba:	bf 14 31 40 00       	mov    $0x403114,%edi
  401dbf:	e8 8c ee ff ff       	callq  400c50 <puts@plt>
  401dc4:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc9:	e8 fd fb ff ff       	callq  4019cb <check_fail>
  401dce:	be 05 00 00 00       	mov    $0x5,%esi
  401dd3:	bf b0 32 40 00       	mov    $0x4032b0,%edi
  401dd8:	b8 00 00 00 00       	mov    $0x0,%eax
  401ddd:	e8 9e ee ff ff       	callq  400c80 <printf@plt>
  401de2:	be 00 00 00 00       	mov    $0x0,%esi
  401de7:	bf 00 00 00 00       	mov    $0x0,%edi
  401dec:	e8 5b fc ff ff       	callq  401a4c <notify_server>
  401df1:	bf 01 00 00 00       	mov    $0x1,%edi
  401df6:	e8 f5 ef ff ff       	callq  400df0 <exit@plt>

0000000000401dfb <launch>:
  401dfb:	55                   	push   %rbp
  401dfc:	48 89 e5             	mov    %rsp,%rbp
  401dff:	48 89 fa             	mov    %rdi,%rdx
  401e02:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401e06:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401e0a:	48 29 c4             	sub    %rax,%rsp
  401e0d:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401e12:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401e16:	be f4 00 00 00       	mov    $0xf4,%esi
  401e1b:	e8 70 ee ff ff       	callq  400c90 <memset@plt>
  401e20:	48 8b 05 99 26 20 00 	mov    0x202699(%rip),%rax        # 6044c0 <stdin@@GLIBC_2.2.5>
  401e27:	48 39 05 c2 26 20 00 	cmp    %rax,0x2026c2(%rip)        # 6044f0 <infile>
  401e2e:	75 0f                	jne    401e3f <launch+0x44>
  401e30:	bf 1c 31 40 00       	mov    $0x40311c,%edi
  401e35:	b8 00 00 00 00       	mov    $0x0,%eax
  401e3a:	e8 41 ee ff ff       	callq  400c80 <printf@plt>
  401e3f:	c7 05 b3 26 20 00 00 	movl   $0x0,0x2026b3(%rip)        # 6044fc <vlevel>
  401e46:	00 00 00 
  401e49:	b8 00 00 00 00       	mov    $0x0,%eax
  401e4e:	e8 e3 fa ff ff       	callq  401936 <test>
  401e53:	83 3d ae 26 20 00 00 	cmpl   $0x0,0x2026ae(%rip)        # 604508 <is_checker>
  401e5a:	74 14                	je     401e70 <launch+0x75>
  401e5c:	bf 29 31 40 00       	mov    $0x403129,%edi
  401e61:	e8 ea ed ff ff       	callq  400c50 <puts@plt>
  401e66:	b8 00 00 00 00       	mov    $0x0,%eax
  401e6b:	e8 5b fb ff ff       	callq  4019cb <check_fail>
  401e70:	bf 34 31 40 00       	mov    $0x403134,%edi
  401e75:	e8 d6 ed ff ff       	callq  400c50 <puts@plt>
  401e7a:	c9                   	leaveq 
  401e7b:	c3                   	retq   

0000000000401e7c <stable_launch>:
  401e7c:	53                   	push   %rbx
  401e7d:	48 89 3d 64 26 20 00 	mov    %rdi,0x202664(%rip)        # 6044e8 <global_offset>
  401e84:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401e8a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401e90:	b9 32 01 00 00       	mov    $0x132,%ecx
  401e95:	ba 07 00 00 00       	mov    $0x7,%edx
  401e9a:	be 00 00 10 00       	mov    $0x100000,%esi
  401e9f:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401ea4:	e8 c7 ed ff ff       	callq  400c70 <mmap@plt>
  401ea9:	48 89 c3             	mov    %rax,%rbx
  401eac:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401eb2:	74 32                	je     401ee6 <stable_launch+0x6a>
  401eb4:	be 00 00 10 00       	mov    $0x100000,%esi
  401eb9:	48 89 c7             	mov    %rax,%rdi
  401ebc:	e8 bf ee ff ff       	callq  400d80 <munmap@plt>
  401ec1:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401ec6:	be e8 32 40 00       	mov    $0x4032e8,%esi
  401ecb:	48 8b 3d fe 25 20 00 	mov    0x2025fe(%rip),%rdi        # 6044d0 <stderr@@GLIBC_2.2.5>
  401ed2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed7:	e8 24 ee ff ff       	callq  400d00 <fprintf@plt>
  401edc:	bf 01 00 00 00       	mov    $0x1,%edi
  401ee1:	e8 0a ef ff ff       	callq  400df0 <exit@plt>
  401ee6:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401eed:	48 89 15 3c 32 20 00 	mov    %rdx,0x20323c(%rip)        # 605130 <stack_top>
  401ef4:	48 89 e0             	mov    %rsp,%rax
  401ef7:	48 89 d4             	mov    %rdx,%rsp
  401efa:	48 89 c2             	mov    %rax,%rdx
  401efd:	48 89 15 dc 25 20 00 	mov    %rdx,0x2025dc(%rip)        # 6044e0 <global_save_stack>
  401f04:	48 8b 3d dd 25 20 00 	mov    0x2025dd(%rip),%rdi        # 6044e8 <global_offset>
  401f0b:	e8 eb fe ff ff       	callq  401dfb <launch>
  401f10:	48 8b 05 c9 25 20 00 	mov    0x2025c9(%rip),%rax        # 6044e0 <global_save_stack>
  401f17:	48 89 c4             	mov    %rax,%rsp
  401f1a:	be 00 00 10 00       	mov    $0x100000,%esi
  401f1f:	48 89 df             	mov    %rbx,%rdi
  401f22:	e8 59 ee ff ff       	callq  400d80 <munmap@plt>
  401f27:	5b                   	pop    %rbx
  401f28:	c3                   	retq   
  401f29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401f30 <rio_readinitb>:
  401f30:	89 37                	mov    %esi,(%rdi)
  401f32:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401f39:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401f3d:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401f41:	c3                   	retq   

0000000000401f42 <sigalrm_handler>:
  401f42:	48 83 ec 08          	sub    $0x8,%rsp
  401f46:	ba 00 00 00 00       	mov    $0x0,%edx
  401f4b:	be 20 33 40 00       	mov    $0x403320,%esi
  401f50:	48 8b 3d 79 25 20 00 	mov    0x202579(%rip),%rdi        # 6044d0 <stderr@@GLIBC_2.2.5>
  401f57:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5c:	e8 9f ed ff ff       	callq  400d00 <fprintf@plt>
  401f61:	bf 01 00 00 00       	mov    $0x1,%edi
  401f66:	e8 85 ee ff ff       	callq  400df0 <exit@plt>

0000000000401f6b <urlencode>:
  401f6b:	41 54                	push   %r12
  401f6d:	55                   	push   %rbp
  401f6e:	53                   	push   %rbx
  401f6f:	48 83 ec 10          	sub    $0x10,%rsp
  401f73:	48 89 fb             	mov    %rdi,%rbx
  401f76:	48 89 f5             	mov    %rsi,%rbp
  401f79:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401f85:	f2 ae                	repnz scas %es:(%rdi),%al
  401f87:	48 f7 d1             	not    %rcx
  401f8a:	8d 41 ff             	lea    -0x1(%rcx),%eax
  401f8d:	e9 93 00 00 00       	jmpq   402025 <urlencode+0xba>
  401f92:	0f b6 13             	movzbl (%rbx),%edx
  401f95:	80 fa 2a             	cmp    $0x2a,%dl
  401f98:	0f 94 c1             	sete   %cl
  401f9b:	80 fa 2d             	cmp    $0x2d,%dl
  401f9e:	0f 94 c0             	sete   %al
  401fa1:	08 c1                	or     %al,%cl
  401fa3:	75 1f                	jne    401fc4 <urlencode+0x59>
  401fa5:	80 fa 2e             	cmp    $0x2e,%dl
  401fa8:	74 1a                	je     401fc4 <urlencode+0x59>
  401faa:	80 fa 5f             	cmp    $0x5f,%dl
  401fad:	74 15                	je     401fc4 <urlencode+0x59>
  401faf:	8d 42 d0             	lea    -0x30(%rdx),%eax
  401fb2:	3c 09                	cmp    $0x9,%al
  401fb4:	76 0e                	jbe    401fc4 <urlencode+0x59>
  401fb6:	8d 42 bf             	lea    -0x41(%rdx),%eax
  401fb9:	3c 19                	cmp    $0x19,%al
  401fbb:	76 07                	jbe    401fc4 <urlencode+0x59>
  401fbd:	8d 42 9f             	lea    -0x61(%rdx),%eax
  401fc0:	3c 19                	cmp    $0x19,%al
  401fc2:	77 09                	ja     401fcd <urlencode+0x62>
  401fc4:	88 55 00             	mov    %dl,0x0(%rbp)
  401fc7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401fcb:	eb 51                	jmp    40201e <urlencode+0xb3>
  401fcd:	80 fa 20             	cmp    $0x20,%dl
  401fd0:	75 0a                	jne    401fdc <urlencode+0x71>
  401fd2:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401fd6:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401fda:	eb 42                	jmp    40201e <urlencode+0xb3>
  401fdc:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401fdf:	3c 5f                	cmp    $0x5f,%al
  401fe1:	0f 96 c1             	setbe  %cl
  401fe4:	80 fa 09             	cmp    $0x9,%dl
  401fe7:	0f 94 c0             	sete   %al
  401fea:	08 c1                	or     %al,%cl
  401fec:	74 45                	je     402033 <urlencode+0xc8>
  401fee:	0f b6 d2             	movzbl %dl,%edx
  401ff1:	be b8 33 40 00       	mov    $0x4033b8,%esi
  401ff6:	48 89 e7             	mov    %rsp,%rdi
  401ff9:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffe:	e8 dd ed ff ff       	callq  400de0 <sprintf@plt>
  402003:	0f b6 04 24          	movzbl (%rsp),%eax
  402007:	88 45 00             	mov    %al,0x0(%rbp)
  40200a:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40200f:	88 45 01             	mov    %al,0x1(%rbp)
  402012:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402017:	88 45 02             	mov    %al,0x2(%rbp)
  40201a:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40201e:	48 83 c3 01          	add    $0x1,%rbx
  402022:	44 89 e0             	mov    %r12d,%eax
  402025:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402029:	85 c0                	test   %eax,%eax
  40202b:	0f 85 61 ff ff ff    	jne    401f92 <urlencode+0x27>
  402031:	eb 05                	jmp    402038 <urlencode+0xcd>
  402033:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402038:	48 83 c4 10          	add    $0x10,%rsp
  40203c:	5b                   	pop    %rbx
  40203d:	5d                   	pop    %rbp
  40203e:	41 5c                	pop    %r12
  402040:	c3                   	retq   

0000000000402041 <rio_writen>:
  402041:	41 55                	push   %r13
  402043:	41 54                	push   %r12
  402045:	55                   	push   %rbp
  402046:	53                   	push   %rbx
  402047:	48 83 ec 08          	sub    $0x8,%rsp
  40204b:	41 89 fc             	mov    %edi,%r12d
  40204e:	48 89 f5             	mov    %rsi,%rbp
  402051:	49 89 d5             	mov    %rdx,%r13
  402054:	48 89 d3             	mov    %rdx,%rbx
  402057:	eb 28                	jmp    402081 <rio_writen+0x40>
  402059:	48 89 da             	mov    %rbx,%rdx
  40205c:	48 89 ee             	mov    %rbp,%rsi
  40205f:	44 89 e7             	mov    %r12d,%edi
  402062:	e8 f9 eb ff ff       	callq  400c60 <write@plt>
  402067:	48 85 c0             	test   %rax,%rax
  40206a:	7f 0f                	jg     40207b <rio_writen+0x3a>
  40206c:	e8 9f eb ff ff       	callq  400c10 <__errno_location@plt>
  402071:	83 38 04             	cmpl   $0x4,(%rax)
  402074:	75 15                	jne    40208b <rio_writen+0x4a>
  402076:	b8 00 00 00 00       	mov    $0x0,%eax
  40207b:	48 29 c3             	sub    %rax,%rbx
  40207e:	48 01 c5             	add    %rax,%rbp
  402081:	48 85 db             	test   %rbx,%rbx
  402084:	75 d3                	jne    402059 <rio_writen+0x18>
  402086:	4c 89 e8             	mov    %r13,%rax
  402089:	eb 07                	jmp    402092 <rio_writen+0x51>
  40208b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402092:	48 83 c4 08          	add    $0x8,%rsp
  402096:	5b                   	pop    %rbx
  402097:	5d                   	pop    %rbp
  402098:	41 5c                	pop    %r12
  40209a:	41 5d                	pop    %r13
  40209c:	c3                   	retq   

000000000040209d <rio_read>:
  40209d:	41 56                	push   %r14
  40209f:	41 55                	push   %r13
  4020a1:	41 54                	push   %r12
  4020a3:	55                   	push   %rbp
  4020a4:	53                   	push   %rbx
  4020a5:	48 89 fb             	mov    %rdi,%rbx
  4020a8:	49 89 f6             	mov    %rsi,%r14
  4020ab:	49 89 d5             	mov    %rdx,%r13
  4020ae:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  4020b2:	eb 2a                	jmp    4020de <rio_read+0x41>
  4020b4:	ba 00 20 00 00       	mov    $0x2000,%edx
  4020b9:	4c 89 e6             	mov    %r12,%rsi
  4020bc:	8b 3b                	mov    (%rbx),%edi
  4020be:	e8 fd eb ff ff       	callq  400cc0 <read@plt>
  4020c3:	89 43 04             	mov    %eax,0x4(%rbx)
  4020c6:	85 c0                	test   %eax,%eax
  4020c8:	79 0c                	jns    4020d6 <rio_read+0x39>
  4020ca:	e8 41 eb ff ff       	callq  400c10 <__errno_location@plt>
  4020cf:	83 38 04             	cmpl   $0x4,(%rax)
  4020d2:	74 0a                	je     4020de <rio_read+0x41>
  4020d4:	eb 37                	jmp    40210d <rio_read+0x70>
  4020d6:	85 c0                	test   %eax,%eax
  4020d8:	74 3c                	je     402116 <rio_read+0x79>
  4020da:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  4020de:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4020e1:	85 ed                	test   %ebp,%ebp
  4020e3:	7e cf                	jle    4020b4 <rio_read+0x17>
  4020e5:	89 e8                	mov    %ebp,%eax
  4020e7:	4c 39 e8             	cmp    %r13,%rax
  4020ea:	72 03                	jb     4020ef <rio_read+0x52>
  4020ec:	44 89 ed             	mov    %r13d,%ebp
  4020ef:	4c 63 e5             	movslq %ebp,%r12
  4020f2:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4020f6:	4c 89 e2             	mov    %r12,%rdx
  4020f9:	4c 89 f7             	mov    %r14,%rdi
  4020fc:	e8 2f ec ff ff       	callq  400d30 <memcpy@plt>
  402101:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402105:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402108:	4c 89 e0             	mov    %r12,%rax
  40210b:	eb 0e                	jmp    40211b <rio_read+0x7e>
  40210d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402114:	eb 05                	jmp    40211b <rio_read+0x7e>
  402116:	b8 00 00 00 00       	mov    $0x0,%eax
  40211b:	5b                   	pop    %rbx
  40211c:	5d                   	pop    %rbp
  40211d:	41 5c                	pop    %r12
  40211f:	41 5d                	pop    %r13
  402121:	41 5e                	pop    %r14
  402123:	c3                   	retq   

0000000000402124 <rio_readlineb>:
  402124:	41 55                	push   %r13
  402126:	41 54                	push   %r12
  402128:	55                   	push   %rbp
  402129:	53                   	push   %rbx
  40212a:	48 83 ec 18          	sub    $0x18,%rsp
  40212e:	49 89 fd             	mov    %rdi,%r13
  402131:	48 89 f5             	mov    %rsi,%rbp
  402134:	49 89 d4             	mov    %rdx,%r12
  402137:	bb 01 00 00 00       	mov    $0x1,%ebx
  40213c:	eb 3d                	jmp    40217b <rio_readlineb+0x57>
  40213e:	ba 01 00 00 00       	mov    $0x1,%edx
  402143:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402148:	4c 89 ef             	mov    %r13,%rdi
  40214b:	e8 4d ff ff ff       	callq  40209d <rio_read>
  402150:	83 f8 01             	cmp    $0x1,%eax
  402153:	75 12                	jne    402167 <rio_readlineb+0x43>
  402155:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402159:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  40215e:	88 45 00             	mov    %al,0x0(%rbp)
  402161:	3c 0a                	cmp    $0xa,%al
  402163:	75 0f                	jne    402174 <rio_readlineb+0x50>
  402165:	eb 1b                	jmp    402182 <rio_readlineb+0x5e>
  402167:	85 c0                	test   %eax,%eax
  402169:	75 23                	jne    40218e <rio_readlineb+0x6a>
  40216b:	48 83 fb 01          	cmp    $0x1,%rbx
  40216f:	90                   	nop
  402170:	75 13                	jne    402185 <rio_readlineb+0x61>
  402172:	eb 23                	jmp    402197 <rio_readlineb+0x73>
  402174:	48 83 c3 01          	add    $0x1,%rbx
  402178:	48 89 d5             	mov    %rdx,%rbp
  40217b:	4c 39 e3             	cmp    %r12,%rbx
  40217e:	72 be                	jb     40213e <rio_readlineb+0x1a>
  402180:	eb 03                	jmp    402185 <rio_readlineb+0x61>
  402182:	48 89 d5             	mov    %rdx,%rbp
  402185:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402189:	48 89 d8             	mov    %rbx,%rax
  40218c:	eb 0e                	jmp    40219c <rio_readlineb+0x78>
  40218e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402195:	eb 05                	jmp    40219c <rio_readlineb+0x78>
  402197:	b8 00 00 00 00       	mov    $0x0,%eax
  40219c:	48 83 c4 18          	add    $0x18,%rsp
  4021a0:	5b                   	pop    %rbx
  4021a1:	5d                   	pop    %rbp
  4021a2:	41 5c                	pop    %r12
  4021a4:	41 5d                	pop    %r13
  4021a6:	c3                   	retq   

00000000004021a7 <submitr>:
  4021a7:	41 57                	push   %r15
  4021a9:	41 56                	push   %r14
  4021ab:	41 55                	push   %r13
  4021ad:	41 54                	push   %r12
  4021af:	55                   	push   %rbp
  4021b0:	53                   	push   %rbx
  4021b1:	48 81 ec 48 a0 00 00 	sub    $0xa048,%rsp
  4021b8:	49 89 fc             	mov    %rdi,%r12
  4021bb:	89 74 24 04          	mov    %esi,0x4(%rsp)
  4021bf:	49 89 d7             	mov    %rdx,%r15
  4021c2:	49 89 ce             	mov    %rcx,%r14
  4021c5:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  4021ca:	4d 89 cd             	mov    %r9,%r13
  4021cd:	48 8b 9c 24 80 a0 00 	mov    0xa080(%rsp),%rbx
  4021d4:	00 
  4021d5:	c7 84 24 1c 20 00 00 	movl   $0x0,0x201c(%rsp)
  4021dc:	00 00 00 00 
  4021e0:	ba 00 00 00 00       	mov    $0x0,%edx
  4021e5:	be 01 00 00 00       	mov    $0x1,%esi
  4021ea:	bf 02 00 00 00       	mov    $0x2,%edi
  4021ef:	e8 1c ec ff ff       	callq  400e10 <socket@plt>
  4021f4:	89 c5                	mov    %eax,%ebp
  4021f6:	85 c0                	test   %eax,%eax
  4021f8:	79 4e                	jns    402248 <submitr+0xa1>
  4021fa:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402201:	3a 20 43 
  402204:	48 89 03             	mov    %rax,(%rbx)
  402207:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40220e:	20 75 6e 
  402211:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402215:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40221c:	74 6f 20 
  40221f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402223:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40222a:	65 20 73 
  40222d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402231:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402238:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  40223e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402243:	e9 68 06 00 00       	jmpq   4028b0 <submitr+0x709>
  402248:	4c 89 e7             	mov    %r12,%rdi
  40224b:	e8 a0 ea ff ff       	callq  400cf0 <gethostbyname@plt>
  402250:	48 85 c0             	test   %rax,%rax
  402253:	75 67                	jne    4022bc <submitr+0x115>
  402255:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40225c:	3a 20 44 
  40225f:	48 89 03             	mov    %rax,(%rbx)
  402262:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402269:	20 75 6e 
  40226c:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402270:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402277:	74 6f 20 
  40227a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40227e:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402285:	76 65 20 
  402288:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40228c:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402293:	72 20 61 
  402296:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40229a:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  4022a1:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  4022a7:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  4022ab:	89 ef                	mov    %ebp,%edi
  4022ad:	e8 fe e9 ff ff       	callq  400cb0 <close@plt>
  4022b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022b7:	e9 f4 05 00 00       	jmpq   4028b0 <submitr+0x709>
  4022bc:	48 c7 84 24 30 a0 00 	movq   $0x0,0xa030(%rsp)
  4022c3:	00 00 00 00 00 
  4022c8:	48 c7 84 24 38 a0 00 	movq   $0x0,0xa038(%rsp)
  4022cf:	00 00 00 00 00 
  4022d4:	66 c7 84 24 30 a0 00 	movw   $0x2,0xa030(%rsp)
  4022db:	00 02 00 
  4022de:	48 8b 48 18          	mov    0x18(%rax),%rcx
  4022e2:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4022e6:	48 8d b4 24 34 a0 00 	lea    0xa034(%rsp),%rsi
  4022ed:	00 
  4022ee:	48 8b 39             	mov    (%rcx),%rdi
  4022f1:	e8 9a ea ff ff       	callq  400d90 <bcopy@plt>
  4022f6:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  4022fb:	66 c1 c8 08          	ror    $0x8,%ax
  4022ff:	66 89 84 24 32 a0 00 	mov    %ax,0xa032(%rsp)
  402306:	00 
  402307:	ba 10 00 00 00       	mov    $0x10,%edx
  40230c:	48 8d b4 24 30 a0 00 	lea    0xa030(%rsp),%rsi
  402313:	00 
  402314:	89 ef                	mov    %ebp,%edi
  402316:	e8 e5 ea ff ff       	callq  400e00 <connect@plt>
  40231b:	85 c0                	test   %eax,%eax
  40231d:	79 59                	jns    402378 <submitr+0x1d1>
  40231f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402326:	3a 20 55 
  402329:	48 89 03             	mov    %rax,(%rbx)
  40232c:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402333:	20 74 6f 
  402336:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40233a:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402341:	65 63 74 
  402344:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402348:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40234f:	68 65 20 
  402352:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402356:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  40235d:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402363:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402367:	89 ef                	mov    %ebp,%edi
  402369:	e8 42 e9 ff ff       	callq  400cb0 <close@plt>
  40236e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402373:	e9 38 05 00 00       	jmpq   4028b0 <submitr+0x709>
  402378:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40237f:	4c 89 ef             	mov    %r13,%rdi
  402382:	b8 00 00 00 00       	mov    $0x0,%eax
  402387:	48 89 d1             	mov    %rdx,%rcx
  40238a:	f2 ae                	repnz scas %es:(%rdi),%al
  40238c:	48 f7 d1             	not    %rcx
  40238f:	48 89 ce             	mov    %rcx,%rsi
  402392:	4c 89 ff             	mov    %r15,%rdi
  402395:	48 89 d1             	mov    %rdx,%rcx
  402398:	f2 ae                	repnz scas %es:(%rdi),%al
  40239a:	48 f7 d1             	not    %rcx
  40239d:	49 89 c8             	mov    %rcx,%r8
  4023a0:	4c 89 f7             	mov    %r14,%rdi
  4023a3:	48 89 d1             	mov    %rdx,%rcx
  4023a6:	f2 ae                	repnz scas %es:(%rdi),%al
  4023a8:	49 29 c8             	sub    %rcx,%r8
  4023ab:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4023b0:	48 89 d1             	mov    %rdx,%rcx
  4023b3:	f2 ae                	repnz scas %es:(%rdi),%al
  4023b5:	49 29 c8             	sub    %rcx,%r8
  4023b8:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  4023bd:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  4023c2:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4023c8:	76 72                	jbe    40243c <submitr+0x295>
  4023ca:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4023d1:	3a 20 52 
  4023d4:	48 89 03             	mov    %rax,(%rbx)
  4023d7:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4023de:	20 73 74 
  4023e1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4023e5:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4023ec:	74 6f 6f 
  4023ef:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4023f3:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  4023fa:	65 2e 20 
  4023fd:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402401:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402408:	61 73 65 
  40240b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40240f:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402416:	49 54 52 
  402419:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40241d:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402424:	55 46 00 
  402427:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40242b:	89 ef                	mov    %ebp,%edi
  40242d:	e8 7e e8 ff ff       	callq  400cb0 <close@plt>
  402432:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402437:	e9 74 04 00 00       	jmpq   4028b0 <submitr+0x709>
  40243c:	48 8d b4 24 20 40 00 	lea    0x4020(%rsp),%rsi
  402443:	00 
  402444:	b9 00 04 00 00       	mov    $0x400,%ecx
  402449:	b8 00 00 00 00       	mov    $0x0,%eax
  40244e:	48 89 f7             	mov    %rsi,%rdi
  402451:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402454:	4c 89 ef             	mov    %r13,%rdi
  402457:	e8 0f fb ff ff       	callq  401f6b <urlencode>
  40245c:	85 c0                	test   %eax,%eax
  40245e:	0f 89 8a 00 00 00    	jns    4024ee <submitr+0x347>
  402464:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40246b:	3a 20 52 
  40246e:	48 89 03             	mov    %rax,(%rbx)
  402471:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402478:	20 73 74 
  40247b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40247f:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402486:	63 6f 6e 
  402489:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40248d:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402494:	20 61 6e 
  402497:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40249b:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4024a2:	67 61 6c 
  4024a5:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4024a9:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4024b0:	6e 70 72 
  4024b3:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4024b7:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4024be:	6c 65 20 
  4024c1:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4024c5:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4024cc:	63 74 65 
  4024cf:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4024d3:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4024d9:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4024dd:	89 ef                	mov    %ebp,%edi
  4024df:	e8 cc e7 ff ff       	callq  400cb0 <close@plt>
  4024e4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024e9:	e9 c2 03 00 00       	jmpq   4028b0 <submitr+0x709>
  4024ee:	4d 89 e1             	mov    %r12,%r9
  4024f1:	4c 8d 84 24 20 40 00 	lea    0x4020(%rsp),%r8
  4024f8:	00 
  4024f9:	4c 89 f9             	mov    %r15,%rcx
  4024fc:	4c 89 f2             	mov    %r14,%rdx
  4024ff:	be 48 33 40 00       	mov    $0x403348,%esi
  402504:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  40250b:	00 
  40250c:	b8 00 00 00 00       	mov    $0x0,%eax
  402511:	e8 ca e8 ff ff       	callq  400de0 <sprintf@plt>
  402516:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  40251d:	00 
  40251e:	b8 00 00 00 00       	mov    $0x0,%eax
  402523:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40252a:	f2 ae                	repnz scas %es:(%rdi),%al
  40252c:	48 f7 d1             	not    %rcx
  40252f:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402533:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40253a:	00 
  40253b:	89 ef                	mov    %ebp,%edi
  40253d:	e8 ff fa ff ff       	callq  402041 <rio_writen>
  402542:	48 85 c0             	test   %rax,%rax
  402545:	79 6e                	jns    4025b5 <submitr+0x40e>
  402547:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40254e:	3a 20 43 
  402551:	48 89 03             	mov    %rax,(%rbx)
  402554:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40255b:	20 75 6e 
  40255e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402562:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402569:	74 6f 20 
  40256c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402570:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402577:	20 74 6f 
  40257a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40257e:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402585:	72 65 73 
  402588:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40258c:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  402593:	65 72 76 
  402596:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40259a:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  4025a0:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  4025a4:	89 ef                	mov    %ebp,%edi
  4025a6:	e8 05 e7 ff ff       	callq  400cb0 <close@plt>
  4025ab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025b0:	e9 fb 02 00 00       	jmpq   4028b0 <submitr+0x709>
  4025b5:	89 ee                	mov    %ebp,%esi
  4025b7:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4025be:	00 
  4025bf:	e8 6c f9 ff ff       	callq  401f30 <rio_readinitb>
  4025c4:	ba 00 20 00 00       	mov    $0x2000,%edx
  4025c9:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4025d0:	00 
  4025d1:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4025d8:	00 
  4025d9:	e8 46 fb ff ff       	callq  402124 <rio_readlineb>
  4025de:	48 85 c0             	test   %rax,%rax
  4025e1:	7f 7d                	jg     402660 <submitr+0x4b9>
  4025e3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4025ea:	3a 20 43 
  4025ed:	48 89 03             	mov    %rax,(%rbx)
  4025f0:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4025f7:	20 75 6e 
  4025fa:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025fe:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402605:	74 6f 20 
  402608:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40260c:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402613:	66 69 72 
  402616:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40261a:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402621:	61 64 65 
  402624:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402628:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  40262f:	6d 20 72 
  402632:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402636:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  40263d:	20 73 65 
  402640:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402644:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  40264b:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  40264f:	89 ef                	mov    %ebp,%edi
  402651:	e8 5a e6 ff ff       	callq  400cb0 <close@plt>
  402656:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40265b:	e9 50 02 00 00       	jmpq   4028b0 <submitr+0x709>
  402660:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  402665:	48 8d 8c 24 1c 20 00 	lea    0x201c(%rsp),%rcx
  40266c:	00 
  40266d:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  402674:	00 
  402675:	be bf 33 40 00       	mov    $0x4033bf,%esi
  40267a:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  402681:	00 
  402682:	b8 00 00 00 00       	mov    $0x0,%eax
  402687:	e8 e4 e6 ff ff       	callq  400d70 <__isoc99_sscanf@plt>
  40268c:	e9 98 00 00 00       	jmpq   402729 <submitr+0x582>
  402691:	ba 00 20 00 00       	mov    $0x2000,%edx
  402696:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40269d:	00 
  40269e:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4026a5:	00 
  4026a6:	e8 79 fa ff ff       	callq  402124 <rio_readlineb>
  4026ab:	48 85 c0             	test   %rax,%rax
  4026ae:	7f 79                	jg     402729 <submitr+0x582>
  4026b0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4026b7:	3a 20 43 
  4026ba:	48 89 03             	mov    %rax,(%rbx)
  4026bd:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4026c4:	20 75 6e 
  4026c7:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026cb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4026d2:	74 6f 20 
  4026d5:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026d9:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4026e0:	68 65 61 
  4026e3:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026e7:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4026ee:	66 72 6f 
  4026f1:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026f5:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  4026fc:	20 72 65 
  4026ff:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402703:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  40270a:	73 65 72 
  40270d:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402711:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402718:	89 ef                	mov    %ebp,%edi
  40271a:	e8 91 e5 ff ff       	callq  400cb0 <close@plt>
  40271f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402724:	e9 87 01 00 00       	jmpq   4028b0 <submitr+0x709>
  402729:	0f b6 84 24 20 60 00 	movzbl 0x6020(%rsp),%eax
  402730:	00 
  402731:	83 e8 0d             	sub    $0xd,%eax
  402734:	75 15                	jne    40274b <submitr+0x5a4>
  402736:	0f b6 84 24 21 60 00 	movzbl 0x6021(%rsp),%eax
  40273d:	00 
  40273e:	83 e8 0a             	sub    $0xa,%eax
  402741:	75 08                	jne    40274b <submitr+0x5a4>
  402743:	0f b6 84 24 22 60 00 	movzbl 0x6022(%rsp),%eax
  40274a:	00 
  40274b:	85 c0                	test   %eax,%eax
  40274d:	0f 85 3e ff ff ff    	jne    402691 <submitr+0x4ea>
  402753:	ba 00 20 00 00       	mov    $0x2000,%edx
  402758:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40275f:	00 
  402760:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402767:	00 
  402768:	e8 b7 f9 ff ff       	callq  402124 <rio_readlineb>
  40276d:	48 85 c0             	test   %rax,%rax
  402770:	0f 8f 83 00 00 00    	jg     4027f9 <submitr+0x652>
  402776:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40277d:	3a 20 43 
  402780:	48 89 03             	mov    %rax,(%rbx)
  402783:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40278a:	20 75 6e 
  40278d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402791:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402798:	74 6f 20 
  40279b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40279f:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  4027a6:	73 74 61 
  4027a9:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4027ad:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4027b4:	65 73 73 
  4027b7:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4027bb:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  4027c2:	72 6f 6d 
  4027c5:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4027c9:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  4027d0:	6c 74 20 
  4027d3:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4027d7:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  4027de:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  4027e4:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  4027e8:	89 ef                	mov    %ebp,%edi
  4027ea:	e8 c1 e4 ff ff       	callq  400cb0 <close@plt>
  4027ef:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027f4:	e9 b7 00 00 00       	jmpq   4028b0 <submitr+0x709>
  4027f9:	8b 94 24 1c 20 00 00 	mov    0x201c(%rsp),%edx
  402800:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402806:	74 28                	je     402830 <submitr+0x689>
  402808:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  40280d:	be 88 33 40 00       	mov    $0x403388,%esi
  402812:	48 89 df             	mov    %rbx,%rdi
  402815:	b8 00 00 00 00       	mov    $0x0,%eax
  40281a:	e8 c1 e5 ff ff       	callq  400de0 <sprintf@plt>
  40281f:	89 ef                	mov    %ebp,%edi
  402821:	e8 8a e4 ff ff       	callq  400cb0 <close@plt>
  402826:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40282b:	e9 80 00 00 00       	jmpq   4028b0 <submitr+0x709>
  402830:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  402837:	00 
  402838:	48 89 df             	mov    %rbx,%rdi
  40283b:	e8 00 e4 ff ff       	callq  400c40 <strcpy@plt>
  402840:	89 ef                	mov    %ebp,%edi
  402842:	e8 69 e4 ff ff       	callq  400cb0 <close@plt>
  402847:	0f b6 03             	movzbl (%rbx),%eax
  40284a:	83 e8 4f             	sub    $0x4f,%eax
  40284d:	75 18                	jne    402867 <submitr+0x6c0>
  40284f:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
  402853:	83 ea 4b             	sub    $0x4b,%edx
  402856:	75 11                	jne    402869 <submitr+0x6c2>
  402858:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  40285c:	83 ea 0a             	sub    $0xa,%edx
  40285f:	75 08                	jne    402869 <submitr+0x6c2>
  402861:	0f b6 53 03          	movzbl 0x3(%rbx),%edx
  402865:	eb 02                	jmp    402869 <submitr+0x6c2>
  402867:	89 c2                	mov    %eax,%edx
  402869:	85 d2                	test   %edx,%edx
  40286b:	74 30                	je     40289d <submitr+0x6f6>
  40286d:	bf d0 33 40 00       	mov    $0x4033d0,%edi
  402872:	b9 05 00 00 00       	mov    $0x5,%ecx
  402877:	48 89 de             	mov    %rbx,%rsi
  40287a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40287c:	0f 97 c1             	seta   %cl
  40287f:	0f 92 c2             	setb   %dl
  402882:	38 d1                	cmp    %dl,%cl
  402884:	74 1e                	je     4028a4 <submitr+0x6fd>
  402886:	85 c0                	test   %eax,%eax
  402888:	75 0d                	jne    402897 <submitr+0x6f0>
  40288a:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  40288e:	83 e8 4b             	sub    $0x4b,%eax
  402891:	75 04                	jne    402897 <submitr+0x6f0>
  402893:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
  402897:	85 c0                	test   %eax,%eax
  402899:	75 10                	jne    4028ab <submitr+0x704>
  40289b:	eb 13                	jmp    4028b0 <submitr+0x709>
  40289d:	b8 00 00 00 00       	mov    $0x0,%eax
  4028a2:	eb 0c                	jmp    4028b0 <submitr+0x709>
  4028a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4028a9:	eb 05                	jmp    4028b0 <submitr+0x709>
  4028ab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028b0:	48 81 c4 48 a0 00 00 	add    $0xa048,%rsp
  4028b7:	5b                   	pop    %rbx
  4028b8:	5d                   	pop    %rbp
  4028b9:	41 5c                	pop    %r12
  4028bb:	41 5d                	pop    %r13
  4028bd:	41 5e                	pop    %r14
  4028bf:	41 5f                	pop    %r15
  4028c1:	c3                   	retq   

00000000004028c2 <init_timeout>:
  4028c2:	53                   	push   %rbx
  4028c3:	89 fb                	mov    %edi,%ebx
  4028c5:	85 ff                	test   %edi,%edi
  4028c7:	74 1f                	je     4028e8 <init_timeout+0x26>
  4028c9:	85 ff                	test   %edi,%edi
  4028cb:	79 05                	jns    4028d2 <init_timeout+0x10>
  4028cd:	bb 00 00 00 00       	mov    $0x0,%ebx
  4028d2:	be 42 1f 40 00       	mov    $0x401f42,%esi
  4028d7:	bf 0e 00 00 00       	mov    $0xe,%edi
  4028dc:	e8 ff e3 ff ff       	callq  400ce0 <signal@plt>
  4028e1:	89 df                	mov    %ebx,%edi
  4028e3:	e8 b8 e3 ff ff       	callq  400ca0 <alarm@plt>
  4028e8:	5b                   	pop    %rbx
  4028e9:	c3                   	retq   

00000000004028ea <init_driver>:
  4028ea:	55                   	push   %rbp
  4028eb:	53                   	push   %rbx
  4028ec:	48 83 ec 18          	sub    $0x18,%rsp
  4028f0:	48 89 fd             	mov    %rdi,%rbp
  4028f3:	be 01 00 00 00       	mov    $0x1,%esi
  4028f8:	bf 0d 00 00 00       	mov    $0xd,%edi
  4028fd:	e8 de e3 ff ff       	callq  400ce0 <signal@plt>
  402902:	be 01 00 00 00       	mov    $0x1,%esi
  402907:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40290c:	e8 cf e3 ff ff       	callq  400ce0 <signal@plt>
  402911:	be 01 00 00 00       	mov    $0x1,%esi
  402916:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40291b:	e8 c0 e3 ff ff       	callq  400ce0 <signal@plt>
  402920:	ba 00 00 00 00       	mov    $0x0,%edx
  402925:	be 01 00 00 00       	mov    $0x1,%esi
  40292a:	bf 02 00 00 00       	mov    $0x2,%edi
  40292f:	e8 dc e4 ff ff       	callq  400e10 <socket@plt>
  402934:	89 c3                	mov    %eax,%ebx
  402936:	85 c0                	test   %eax,%eax
  402938:	79 4f                	jns    402989 <init_driver+0x9f>
  40293a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402941:	3a 20 43 
  402944:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402948:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40294f:	20 75 6e 
  402952:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402956:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40295d:	74 6f 20 
  402960:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402964:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40296b:	65 20 73 
  40296e:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402972:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402979:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40297f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402984:	e9 23 01 00 00       	jmpq   402aac <init_driver+0x1c2>
  402989:	bf d5 33 40 00       	mov    $0x4033d5,%edi
  40298e:	e8 5d e3 ff ff       	callq  400cf0 <gethostbyname@plt>
  402993:	48 85 c0             	test   %rax,%rax
  402996:	75 68                	jne    402a00 <init_driver+0x116>
  402998:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40299f:	3a 20 44 
  4029a2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029a6:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4029ad:	20 75 6e 
  4029b0:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4029b4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029bb:	74 6f 20 
  4029be:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029c2:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4029c9:	76 65 20 
  4029cc:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4029d0:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4029d7:	72 20 61 
  4029da:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4029de:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4029e5:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4029eb:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4029ef:	89 df                	mov    %ebx,%edi
  4029f1:	e8 ba e2 ff ff       	callq  400cb0 <close@plt>
  4029f6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029fb:	e9 ac 00 00 00       	jmpq   402aac <init_driver+0x1c2>
  402a00:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402a07:	00 
  402a08:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402a0f:	00 00 
  402a11:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402a17:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402a1b:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402a1f:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  402a24:	48 8b 39             	mov    (%rcx),%rdi
  402a27:	e8 64 e3 ff ff       	callq  400d90 <bcopy@plt>
  402a2c:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402a33:	ba 10 00 00 00       	mov    $0x10,%edx
  402a38:	48 89 e6             	mov    %rsp,%rsi
  402a3b:	89 df                	mov    %ebx,%edi
  402a3d:	e8 be e3 ff ff       	callq  400e00 <connect@plt>
  402a42:	85 c0                	test   %eax,%eax
  402a44:	79 50                	jns    402a96 <init_driver+0x1ac>
  402a46:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402a4d:	3a 20 55 
  402a50:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a54:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402a5b:	20 74 6f 
  402a5e:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402a62:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402a69:	65 63 74 
  402a6c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a70:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402a77:	65 72 76 
  402a7a:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402a7e:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402a84:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402a88:	89 df                	mov    %ebx,%edi
  402a8a:	e8 21 e2 ff ff       	callq  400cb0 <close@plt>
  402a8f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a94:	eb 16                	jmp    402aac <init_driver+0x1c2>
  402a96:	89 df                	mov    %ebx,%edi
  402a98:	e8 13 e2 ff ff       	callq  400cb0 <close@plt>
  402a9d:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402aa3:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402aa7:	b8 00 00 00 00       	mov    $0x0,%eax
  402aac:	48 83 c4 18          	add    $0x18,%rsp
  402ab0:	5b                   	pop    %rbx
  402ab1:	5d                   	pop    %rbp
  402ab2:	c3                   	retq   

0000000000402ab3 <driver_post>:
  402ab3:	53                   	push   %rbx
  402ab4:	48 83 ec 10          	sub    $0x10,%rsp
  402ab8:	4c 89 cb             	mov    %r9,%rbx
  402abb:	45 85 c0             	test   %r8d,%r8d
  402abe:	74 22                	je     402ae2 <driver_post+0x2f>
  402ac0:	48 89 ce             	mov    %rcx,%rsi
  402ac3:	bf e8 33 40 00       	mov    $0x4033e8,%edi
  402ac8:	b8 00 00 00 00       	mov    $0x0,%eax
  402acd:	e8 ae e1 ff ff       	callq  400c80 <printf@plt>
  402ad2:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402ad7:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402adb:	b8 00 00 00 00       	mov    $0x0,%eax
  402ae0:	eb 39                	jmp    402b1b <driver_post+0x68>
  402ae2:	48 85 ff             	test   %rdi,%rdi
  402ae5:	74 26                	je     402b0d <driver_post+0x5a>
  402ae7:	80 3f 00             	cmpb   $0x0,(%rdi)
  402aea:	74 21                	je     402b0d <driver_post+0x5a>
  402aec:	4c 89 0c 24          	mov    %r9,(%rsp)
  402af0:	49 89 c9             	mov    %rcx,%r9
  402af3:	49 89 d0             	mov    %rdx,%r8
  402af6:	48 89 f9             	mov    %rdi,%rcx
  402af9:	48 89 f2             	mov    %rsi,%rdx
  402afc:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402b01:	bf d5 33 40 00       	mov    $0x4033d5,%edi
  402b06:	e8 9c f6 ff ff       	callq  4021a7 <submitr>
  402b0b:	eb 0e                	jmp    402b1b <driver_post+0x68>
  402b0d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402b12:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402b16:	b8 00 00 00 00       	mov    $0x0,%eax
  402b1b:	48 83 c4 10          	add    $0x10,%rsp
  402b1f:	5b                   	pop    %rbx
  402b20:	c3                   	retq   

0000000000402b21 <check>:
  402b21:	89 f8                	mov    %edi,%eax
  402b23:	c1 e8 1c             	shr    $0x1c,%eax
  402b26:	85 c0                	test   %eax,%eax
  402b28:	74 1d                	je     402b47 <check+0x26>
  402b2a:	b9 00 00 00 00       	mov    $0x0,%ecx
  402b2f:	eb 0b                	jmp    402b3c <check+0x1b>
  402b31:	89 f8                	mov    %edi,%eax
  402b33:	d3 e8                	shr    %cl,%eax
  402b35:	3c 0a                	cmp    $0xa,%al
  402b37:	74 14                	je     402b4d <check+0x2c>
  402b39:	83 c1 08             	add    $0x8,%ecx
  402b3c:	83 f9 1f             	cmp    $0x1f,%ecx
  402b3f:	7e f0                	jle    402b31 <check+0x10>
  402b41:	b8 01 00 00 00       	mov    $0x1,%eax
  402b46:	c3                   	retq   
  402b47:	b8 00 00 00 00       	mov    $0x0,%eax
  402b4c:	c3                   	retq   
  402b4d:	b8 00 00 00 00       	mov    $0x0,%eax
  402b52:	c3                   	retq   

0000000000402b53 <gencookie>:
  402b53:	53                   	push   %rbx
  402b54:	83 c7 01             	add    $0x1,%edi
  402b57:	e8 c4 e0 ff ff       	callq  400c20 <srandom@plt>
  402b5c:	e8 ef e1 ff ff       	callq  400d50 <random@plt>
  402b61:	89 c3                	mov    %eax,%ebx
  402b63:	89 c7                	mov    %eax,%edi
  402b65:	e8 b7 ff ff ff       	callq  402b21 <check>
  402b6a:	85 c0                	test   %eax,%eax
  402b6c:	74 ee                	je     402b5c <gencookie+0x9>
  402b6e:	89 d8                	mov    %ebx,%eax
  402b70:	5b                   	pop    %rbx
  402b71:	c3                   	retq   
  402b72:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402b79:	00 00 00 
  402b7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402b80 <__libc_csu_init>:
  402b80:	41 57                	push   %r15
  402b82:	41 89 ff             	mov    %edi,%r15d
  402b85:	41 56                	push   %r14
  402b87:	49 89 f6             	mov    %rsi,%r14
  402b8a:	41 55                	push   %r13
  402b8c:	49 89 d5             	mov    %rdx,%r13
  402b8f:	41 54                	push   %r12
  402b91:	4c 8d 25 78 12 20 00 	lea    0x201278(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402b98:	55                   	push   %rbp
  402b99:	48 8d 2d 78 12 20 00 	lea    0x201278(%rip),%rbp        # 603e18 <__do_global_dtors_aux_fini_array_entry>
  402ba0:	53                   	push   %rbx
  402ba1:	4c 29 e5             	sub    %r12,%rbp
  402ba4:	31 db                	xor    %ebx,%ebx
  402ba6:	48 c1 fd 03          	sar    $0x3,%rbp
  402baa:	48 83 ec 08          	sub    $0x8,%rsp
  402bae:	e8 15 e0 ff ff       	callq  400bc8 <_init>
  402bb3:	48 85 ed             	test   %rbp,%rbp
  402bb6:	74 1e                	je     402bd6 <__libc_csu_init+0x56>
  402bb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402bbf:	00 
  402bc0:	4c 89 ea             	mov    %r13,%rdx
  402bc3:	4c 89 f6             	mov    %r14,%rsi
  402bc6:	44 89 ff             	mov    %r15d,%edi
  402bc9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402bcd:	48 83 c3 01          	add    $0x1,%rbx
  402bd1:	48 39 eb             	cmp    %rbp,%rbx
  402bd4:	75 ea                	jne    402bc0 <__libc_csu_init+0x40>
  402bd6:	48 83 c4 08          	add    $0x8,%rsp
  402bda:	5b                   	pop    %rbx
  402bdb:	5d                   	pop    %rbp
  402bdc:	41 5c                	pop    %r12
  402bde:	41 5d                	pop    %r13
  402be0:	41 5e                	pop    %r14
  402be2:	41 5f                	pop    %r15
  402be4:	c3                   	retq   
  402be5:	90                   	nop
  402be6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402bed:	00 00 00 

0000000000402bf0 <__libc_csu_fini>:
  402bf0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402bf4 <_fini>:
  402bf4:	48 83 ec 08          	sub    $0x8,%rsp
  402bf8:	48 83 c4 08          	add    $0x8,%rsp
  402bfc:	c3                   	retq   
