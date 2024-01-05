
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400bc8 <_init>:
  400bc8:	48 83 ec 08          	sub    $0x8,%rsp
  400bcc:	48 8b 05 25 44 20 00 	mov    0x204425(%rip),%rax        # 604ff8 <__gmon_start__>
  400bd3:	48 85 c0             	test   %rax,%rax
  400bd6:	74 05                	je     400bdd <_init+0x15>
  400bd8:	e8 33 01 00 00       	callq  400d10 <__gmon_start__@plt>
  400bdd:	48 83 c4 08          	add    $0x8,%rsp
  400be1:	c3                   	retq   

Disassembly of section .plt:

0000000000400bf0 <.plt>:
  400bf0:	ff 35 12 44 20 00    	pushq  0x204412(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bf6:	ff 25 14 44 20 00    	jmpq   *0x204414(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bfc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c00 <strcasecmp@plt>:
  400c00:	ff 25 12 44 20 00    	jmpq   *0x204412(%rip)        # 605018 <strcasecmp@GLIBC_2.2.5>
  400c06:	68 00 00 00 00       	pushq  $0x0
  400c0b:	e9 e0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c10 <__errno_location@plt>:
  400c10:	ff 25 0a 44 20 00    	jmpq   *0x20440a(%rip)        # 605020 <__errno_location@GLIBC_2.2.5>
  400c16:	68 01 00 00 00       	pushq  $0x1
  400c1b:	e9 d0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c20 <srandom@plt>:
  400c20:	ff 25 02 44 20 00    	jmpq   *0x204402(%rip)        # 605028 <srandom@GLIBC_2.2.5>
  400c26:	68 02 00 00 00       	pushq  $0x2
  400c2b:	e9 c0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c30 <strncmp@plt>:
  400c30:	ff 25 fa 43 20 00    	jmpq   *0x2043fa(%rip)        # 605030 <strncmp@GLIBC_2.2.5>
  400c36:	68 03 00 00 00       	pushq  $0x3
  400c3b:	e9 b0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c40 <strcpy@plt>:
  400c40:	ff 25 f2 43 20 00    	jmpq   *0x2043f2(%rip)        # 605038 <strcpy@GLIBC_2.2.5>
  400c46:	68 04 00 00 00       	pushq  $0x4
  400c4b:	e9 a0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c50 <puts@plt>:
  400c50:	ff 25 ea 43 20 00    	jmpq   *0x2043ea(%rip)        # 605040 <puts@GLIBC_2.2.5>
  400c56:	68 05 00 00 00       	pushq  $0x5
  400c5b:	e9 90 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c60 <write@plt>:
  400c60:	ff 25 e2 43 20 00    	jmpq   *0x2043e2(%rip)        # 605048 <write@GLIBC_2.2.5>
  400c66:	68 06 00 00 00       	pushq  $0x6
  400c6b:	e9 80 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c70 <mmap@plt>:
  400c70:	ff 25 da 43 20 00    	jmpq   *0x2043da(%rip)        # 605050 <mmap@GLIBC_2.2.5>
  400c76:	68 07 00 00 00       	pushq  $0x7
  400c7b:	e9 70 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c80 <printf@plt>:
  400c80:	ff 25 d2 43 20 00    	jmpq   *0x2043d2(%rip)        # 605058 <printf@GLIBC_2.2.5>
  400c86:	68 08 00 00 00       	pushq  $0x8
  400c8b:	e9 60 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c90 <memset@plt>:
  400c90:	ff 25 ca 43 20 00    	jmpq   *0x2043ca(%rip)        # 605060 <memset@GLIBC_2.2.5>
  400c96:	68 09 00 00 00       	pushq  $0x9
  400c9b:	e9 50 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400ca0 <alarm@plt>:
  400ca0:	ff 25 c2 43 20 00    	jmpq   *0x2043c2(%rip)        # 605068 <alarm@GLIBC_2.2.5>
  400ca6:	68 0a 00 00 00       	pushq  $0xa
  400cab:	e9 40 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cb0 <close@plt>:
  400cb0:	ff 25 ba 43 20 00    	jmpq   *0x2043ba(%rip)        # 605070 <close@GLIBC_2.2.5>
  400cb6:	68 0b 00 00 00       	pushq  $0xb
  400cbb:	e9 30 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cc0 <read@plt>:
  400cc0:	ff 25 b2 43 20 00    	jmpq   *0x2043b2(%rip)        # 605078 <read@GLIBC_2.2.5>
  400cc6:	68 0c 00 00 00       	pushq  $0xc
  400ccb:	e9 20 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cd0 <__libc_start_main@plt>:
  400cd0:	ff 25 aa 43 20 00    	jmpq   *0x2043aa(%rip)        # 605080 <__libc_start_main@GLIBC_2.2.5>
  400cd6:	68 0d 00 00 00       	pushq  $0xd
  400cdb:	e9 10 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400ce0 <signal@plt>:
  400ce0:	ff 25 a2 43 20 00    	jmpq   *0x2043a2(%rip)        # 605088 <signal@GLIBC_2.2.5>
  400ce6:	68 0e 00 00 00       	pushq  $0xe
  400ceb:	e9 00 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cf0 <gethostbyname@plt>:
  400cf0:	ff 25 9a 43 20 00    	jmpq   *0x20439a(%rip)        # 605090 <gethostbyname@GLIBC_2.2.5>
  400cf6:	68 0f 00 00 00       	pushq  $0xf
  400cfb:	e9 f0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d00 <fprintf@plt>:
  400d00:	ff 25 92 43 20 00    	jmpq   *0x204392(%rip)        # 605098 <fprintf@GLIBC_2.2.5>
  400d06:	68 10 00 00 00       	pushq  $0x10
  400d0b:	e9 e0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d10 <__gmon_start__@plt>:
  400d10:	ff 25 8a 43 20 00    	jmpq   *0x20438a(%rip)        # 6050a0 <__gmon_start__>
  400d16:	68 11 00 00 00       	pushq  $0x11
  400d1b:	e9 d0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d20 <strtol@plt>:
  400d20:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 6050a8 <strtol@GLIBC_2.2.5>
  400d26:	68 12 00 00 00       	pushq  $0x12
  400d2b:	e9 c0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d30 <memcpy@plt>:
  400d30:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 6050b0 <memcpy@GLIBC_2.14>
  400d36:	68 13 00 00 00       	pushq  $0x13
  400d3b:	e9 b0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d40 <time@plt>:
  400d40:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 6050b8 <time@GLIBC_2.2.5>
  400d46:	68 14 00 00 00       	pushq  $0x14
  400d4b:	e9 a0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d50 <random@plt>:
  400d50:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 6050c0 <random@GLIBC_2.2.5>
  400d56:	68 15 00 00 00       	pushq  $0x15
  400d5b:	e9 90 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d60 <_IO_getc@plt>:
  400d60:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 6050c8 <_IO_getc@GLIBC_2.2.5>
  400d66:	68 16 00 00 00       	pushq  $0x16
  400d6b:	e9 80 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d70 <__isoc99_sscanf@plt>:
  400d70:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 6050d0 <__isoc99_sscanf@GLIBC_2.7>
  400d76:	68 17 00 00 00       	pushq  $0x17
  400d7b:	e9 70 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d80 <munmap@plt>:
  400d80:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 6050d8 <munmap@GLIBC_2.2.5>
  400d86:	68 18 00 00 00       	pushq  $0x18
  400d8b:	e9 60 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d90 <bcopy@plt>:
  400d90:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 6050e0 <bcopy@GLIBC_2.2.5>
  400d96:	68 19 00 00 00       	pushq  $0x19
  400d9b:	e9 50 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400da0 <fopen@plt>:
  400da0:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 6050e8 <fopen@GLIBC_2.2.5>
  400da6:	68 1a 00 00 00       	pushq  $0x1a
  400dab:	e9 40 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400db0 <getopt@plt>:
  400db0:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 6050f0 <getopt@GLIBC_2.2.5>
  400db6:	68 1b 00 00 00       	pushq  $0x1b
  400dbb:	e9 30 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400dc0 <strtoul@plt>:
  400dc0:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 6050f8 <strtoul@GLIBC_2.2.5>
  400dc6:	68 1c 00 00 00       	pushq  $0x1c
  400dcb:	e9 20 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400dd0 <gethostname@plt>:
  400dd0:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605100 <gethostname@GLIBC_2.2.5>
  400dd6:	68 1d 00 00 00       	pushq  $0x1d
  400ddb:	e9 10 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400de0 <sprintf@plt>:
  400de0:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605108 <sprintf@GLIBC_2.2.5>
  400de6:	68 1e 00 00 00       	pushq  $0x1e
  400deb:	e9 00 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400df0 <exit@plt>:
  400df0:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 605110 <exit@GLIBC_2.2.5>
  400df6:	68 1f 00 00 00       	pushq  $0x1f
  400dfb:	e9 f0 fd ff ff       	jmpq   400bf0 <.plt>

0000000000400e00 <connect@plt>:
  400e00:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 605118 <connect@GLIBC_2.2.5>
  400e06:	68 20 00 00 00       	pushq  $0x20
  400e0b:	e9 e0 fd ff ff       	jmpq   400bf0 <.plt>

0000000000400e10 <socket@plt>:
  400e10:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 605120 <socket@GLIBC_2.2.5>
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
  400e2f:	49 c7 c0 10 2d 40 00 	mov    $0x402d10,%r8
  400e36:	48 c7 c1 a0 2c 40 00 	mov    $0x402ca0,%rcx
  400e3d:	48 c7 c7 e0 10 40 00 	mov    $0x4010e0,%rdi
  400e44:	e8 87 fe ff ff       	callq  400cd0 <__libc_start_main@plt>
  400e49:	f4                   	hlt    
  400e4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e50 <deregister_tm_clones>:
  400e50:	b8 b7 54 60 00       	mov    $0x6054b7,%eax
  400e55:	55                   	push   %rbp
  400e56:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
  400e5c:	48 83 f8 0e          	cmp    $0xe,%rax
  400e60:	48 89 e5             	mov    %rsp,%rbp
  400e63:	77 02                	ja     400e67 <deregister_tm_clones+0x17>
  400e65:	5d                   	pop    %rbp
  400e66:	c3                   	retq   
  400e67:	b8 00 00 00 00       	mov    $0x0,%eax
  400e6c:	48 85 c0             	test   %rax,%rax
  400e6f:	74 f4                	je     400e65 <deregister_tm_clones+0x15>
  400e71:	5d                   	pop    %rbp
  400e72:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400e77:	ff e0                	jmpq   *%rax
  400e79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e80 <register_tm_clones>:
  400e80:	b8 b0 54 60 00       	mov    $0x6054b0,%eax
  400e85:	55                   	push   %rbp
  400e86:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
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
  400eb2:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400eb7:	ff e2                	jmpq   *%rdx
  400eb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400ec0 <__do_global_dtors_aux>:
  400ec0:	80 3d 11 46 20 00 00 	cmpb   $0x0,0x204611(%rip)        # 6054d8 <completed.6355>
  400ec7:	75 11                	jne    400eda <__do_global_dtors_aux+0x1a>
  400ec9:	55                   	push   %rbp
  400eca:	48 89 e5             	mov    %rsp,%rbp
  400ecd:	e8 7e ff ff ff       	callq  400e50 <deregister_tm_clones>
  400ed2:	5d                   	pop    %rbp
  400ed3:	c6 05 fe 45 20 00 01 	movb   $0x1,0x2045fe(%rip)        # 6054d8 <completed.6355>
  400eda:	f3 c3                	repz retq 
  400edc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ee0 <frame_dummy>:
  400ee0:	48 83 3d 38 3f 20 00 	cmpq   $0x0,0x203f38(%rip)        # 604e20 <__JCR_END__>
  400ee7:	00 
  400ee8:	74 1e                	je     400f08 <frame_dummy+0x28>
  400eea:	b8 00 00 00 00       	mov    $0x0,%eax
  400eef:	48 85 c0             	test   %rax,%rax
  400ef2:	74 14                	je     400f08 <frame_dummy+0x28>
  400ef4:	55                   	push   %rbp
  400ef5:	bf 20 4e 60 00       	mov    $0x604e20,%edi
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
  400f17:	83 3d ea 45 20 00 00 	cmpl   $0x0,0x2045ea(%rip)        # 605508 <is_checker>
  400f1e:	74 39                	je     400f59 <usage+0x49>
  400f20:	bf 30 2d 40 00       	mov    $0x402d30,%edi
  400f25:	b8 00 00 00 00       	mov    $0x0,%eax
  400f2a:	e8 51 fd ff ff       	callq  400c80 <printf@plt>
  400f2f:	bf 68 2d 40 00       	mov    $0x402d68,%edi
  400f34:	e8 17 fd ff ff       	callq  400c50 <puts@plt>
  400f39:	bf e0 2e 40 00       	mov    $0x402ee0,%edi
  400f3e:	e8 0d fd ff ff       	callq  400c50 <puts@plt>
  400f43:	bf 90 2d 40 00       	mov    $0x402d90,%edi
  400f48:	e8 03 fd ff ff       	callq  400c50 <puts@plt>
  400f4d:	bf fa 2e 40 00       	mov    $0x402efa,%edi
  400f52:	e8 f9 fc ff ff       	callq  400c50 <puts@plt>
  400f57:	eb 2d                	jmp    400f86 <usage+0x76>
  400f59:	bf 16 2f 40 00       	mov    $0x402f16,%edi
  400f5e:	b8 00 00 00 00       	mov    $0x0,%eax
  400f63:	e8 18 fd ff ff       	callq  400c80 <printf@plt>
  400f68:	bf b8 2d 40 00       	mov    $0x402db8,%edi
  400f6d:	e8 de fc ff ff       	callq  400c50 <puts@plt>
  400f72:	bf e0 2d 40 00       	mov    $0x402de0,%edi
  400f77:	e8 d4 fc ff ff       	callq  400c50 <puts@plt>
  400f7c:	bf 34 2f 40 00       	mov    $0x402f34,%edi
  400f81:	e8 ca fc ff ff       	callq  400c50 <puts@plt>
  400f86:	bf 00 00 00 00       	mov    $0x0,%edi
  400f8b:	e8 60 fe ff ff       	callq  400df0 <exit@plt>

0000000000400f90 <initialize_target>:
  400f90:	55                   	push   %rbp
  400f91:	53                   	push   %rbx
  400f92:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400f99:	89 f5                	mov    %esi,%ebp
  400f9b:	89 3d 57 45 20 00    	mov    %edi,0x204557(%rip)        # 6054f8 <check_level>
  400fa1:	8b 3d c1 41 20 00    	mov    0x2041c1(%rip),%edi        # 605168 <target_id>
  400fa7:	e8 c7 1c 00 00       	callq  402c73 <gencookie>
  400fac:	89 05 52 45 20 00    	mov    %eax,0x204552(%rip)        # 605504 <cookie>
  400fb2:	89 c7                	mov    %eax,%edi
  400fb4:	e8 ba 1c 00 00       	callq  402c73 <gencookie>
  400fb9:	89 05 41 45 20 00    	mov    %eax,0x204541(%rip)        # 605500 <authkey>
  400fbf:	8b 05 a3 41 20 00    	mov    0x2041a3(%rip),%eax        # 605168 <target_id>
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
  40100a:	48 89 05 8f 44 20 00 	mov    %rax,0x20448f(%rip)        # 6054a0 <buf_offset>
  401011:	c6 05 10 51 20 00 72 	movb   $0x72,0x205110(%rip)        # 606128 <target_prefix>
  401018:	83 3d 89 44 20 00 00 	cmpl   $0x0,0x204489(%rip)        # 6054a8 <notify>
  40101f:	0f 84 b1 00 00 00    	je     4010d6 <initialize_target+0x146>
  401025:	83 3d dc 44 20 00 00 	cmpl   $0x0,0x2044dc(%rip)        # 605508 <is_checker>
  40102c:	0f 85 a4 00 00 00    	jne    4010d6 <initialize_target+0x146>
  401032:	be 00 01 00 00       	mov    $0x100,%esi
  401037:	48 89 e7             	mov    %rsp,%rdi
  40103a:	e8 91 fd ff ff       	callq  400dd0 <gethostname@plt>
  40103f:	85 c0                	test   %eax,%eax
  401041:	74 25                	je     401068 <initialize_target+0xd8>
  401043:	bf 10 2e 40 00       	mov    $0x402e10,%edi
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
  401070:	48 8b 3c c5 80 51 60 	mov    0x605180(,%rax,8),%rdi
  401077:	00 
  401078:	48 85 ff             	test   %rdi,%rdi
  40107b:	75 da                	jne    401057 <initialize_target+0xc7>
  40107d:	b8 00 00 00 00       	mov    $0x0,%eax
  401082:	eb 05                	jmp    401089 <initialize_target+0xf9>
  401084:	b8 01 00 00 00       	mov    $0x1,%eax
  401089:	85 c0                	test   %eax,%eax
  40108b:	75 17                	jne    4010a4 <initialize_target+0x114>
  40108d:	48 89 e6             	mov    %rsp,%rsi
  401090:	bf 48 2e 40 00       	mov    $0x402e48,%edi
  401095:	e8 e6 fb ff ff       	callq  400c80 <printf@plt>
  40109a:	bf 08 00 00 00       	mov    $0x8,%edi
  40109f:	e8 4c fd ff ff       	callq  400df0 <exit@plt>
  4010a4:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4010ab:	00 
  4010ac:	e8 59 19 00 00       	callq  402a0a <init_driver>
  4010b1:	85 c0                	test   %eax,%eax
  4010b3:	79 21                	jns    4010d6 <initialize_target+0x146>
  4010b5:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  4010bc:	00 
  4010bd:	bf 88 2e 40 00       	mov    $0x402e88,%edi
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
  4010ee:	be 31 1e 40 00       	mov    $0x401e31,%esi
  4010f3:	bf 0b 00 00 00       	mov    $0xb,%edi
  4010f8:	e8 e3 fb ff ff       	callq  400ce0 <signal@plt>
  4010fd:	be e3 1d 40 00       	mov    $0x401de3,%esi
  401102:	bf 07 00 00 00       	mov    $0x7,%edi
  401107:	e8 d4 fb ff ff       	callq  400ce0 <signal@plt>
  40110c:	be 7f 1e 40 00       	mov    $0x401e7f,%esi
  401111:	bf 04 00 00 00       	mov    $0x4,%edi
  401116:	e8 c5 fb ff ff       	callq  400ce0 <signal@plt>
  40111b:	83 3d e6 43 20 00 00 	cmpl   $0x0,0x2043e6(%rip)        # 605508 <is_checker>
  401122:	74 20                	je     401144 <main+0x64>
  401124:	be cd 1e 40 00       	mov    $0x401ecd,%esi
  401129:	bf 0e 00 00 00       	mov    $0xe,%edi
  40112e:	e8 ad fb ff ff       	callq  400ce0 <signal@plt>
  401133:	bf 05 00 00 00       	mov    $0x5,%edi
  401138:	e8 63 fb ff ff       	callq  400ca0 <alarm@plt>
  40113d:	bd 52 2f 40 00       	mov    $0x402f52,%ebp
  401142:	eb 05                	jmp    401149 <main+0x69>
  401144:	bd 4d 2f 40 00       	mov    $0x402f4d,%ebp
  401149:	48 8b 05 70 43 20 00 	mov    0x204370(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  401150:	48 89 05 99 43 20 00 	mov    %rax,0x204399(%rip)        # 6054f0 <infile>
  401157:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40115d:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401163:	e9 b9 00 00 00       	jmpq   401221 <main+0x141>
  401168:	83 e8 61             	sub    $0x61,%eax
  40116b:	3c 10                	cmp    $0x10,%al
  40116d:	0f 87 93 00 00 00    	ja     401206 <main+0x126>
  401173:	0f b6 c0             	movzbl %al,%eax
  401176:	ff 24 c5 98 2f 40 00 	jmpq   *0x402f98(,%rax,8)
  40117d:	48 8b 3b             	mov    (%rbx),%rdi
  401180:	e8 8b fd ff ff       	callq  400f10 <usage>
  401185:	be f5 31 40 00       	mov    $0x4031f5,%esi
  40118a:	48 8b 3d 37 43 20 00 	mov    0x204337(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401191:	e8 0a fc ff ff       	callq  400da0 <fopen@plt>
  401196:	48 89 05 53 43 20 00 	mov    %rax,0x204353(%rip)        # 6054f0 <infile>
  40119d:	48 85 c0             	test   %rax,%rax
  4011a0:	75 7f                	jne    401221 <main+0x141>
  4011a2:	48 8b 15 1f 43 20 00 	mov    0x20431f(%rip),%rdx        # 6054c8 <optarg@@GLIBC_2.2.5>
  4011a9:	be 5a 2f 40 00       	mov    $0x402f5a,%esi
  4011ae:	48 8b 3d 1b 43 20 00 	mov    0x20431b(%rip),%rdi        # 6054d0 <stderr@@GLIBC_2.2.5>
  4011b5:	e8 46 fb ff ff       	callq  400d00 <fprintf@plt>
  4011ba:	b8 01 00 00 00       	mov    $0x1,%eax
  4011bf:	e9 d6 00 00 00       	jmpq   40129a <main+0x1ba>
  4011c4:	ba 10 00 00 00       	mov    $0x10,%edx
  4011c9:	be 00 00 00 00       	mov    $0x0,%esi
  4011ce:	48 8b 3d f3 42 20 00 	mov    0x2042f3(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4011d5:	e8 e6 fb ff ff       	callq  400dc0 <strtoul@plt>
  4011da:	41 89 c6             	mov    %eax,%r14d
  4011dd:	eb 42                	jmp    401221 <main+0x141>
  4011df:	ba 0a 00 00 00       	mov    $0xa,%edx
  4011e4:	be 00 00 00 00       	mov    $0x0,%esi
  4011e9:	48 8b 3d d8 42 20 00 	mov    0x2042d8(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4011f0:	e8 2b fb ff ff       	callq  400d20 <strtol@plt>
  4011f5:	41 89 c5             	mov    %eax,%r13d
  4011f8:	eb 27                	jmp    401221 <main+0x141>
  4011fa:	c7 05 a4 42 20 00 00 	movl   $0x0,0x2042a4(%rip)        # 6054a8 <notify>
  401201:	00 00 00 
  401204:	eb 1b                	jmp    401221 <main+0x141>
  401206:	40 0f be f6          	movsbl %sil,%esi
  40120a:	bf 77 2f 40 00       	mov    $0x402f77,%edi
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
  401239:	be 01 00 00 00       	mov    $0x1,%esi
  40123e:	44 89 ef             	mov    %r13d,%edi
  401241:	e8 4a fd ff ff       	callq  400f90 <initialize_target>
  401246:	83 3d bb 42 20 00 00 	cmpl   $0x0,0x2042bb(%rip)        # 605508 <is_checker>
  40124d:	74 25                	je     401274 <main+0x194>
  40124f:	44 3b 35 aa 42 20 00 	cmp    0x2042aa(%rip),%r14d        # 605500 <authkey>
  401256:	74 1c                	je     401274 <main+0x194>
  401258:	44 89 f6             	mov    %r14d,%esi
  40125b:	bf b0 2e 40 00       	mov    $0x402eb0,%edi
  401260:	b8 00 00 00 00       	mov    $0x0,%eax
  401265:	e8 16 fa ff ff       	callq  400c80 <printf@plt>
  40126a:	b8 00 00 00 00       	mov    $0x0,%eax
  40126f:	e8 77 08 00 00       	callq  401aeb <check_fail>
  401274:	8b 35 8a 42 20 00    	mov    0x20428a(%rip),%esi        # 605504 <cookie>
  40127a:	bf 8a 2f 40 00       	mov    $0x402f8a,%edi
  40127f:	b8 00 00 00 00       	mov    $0x0,%eax
  401284:	e8 f7 f9 ff ff       	callq  400c80 <printf@plt>
  401289:	48 8b 3d 10 42 20 00 	mov    0x204210(%rip),%rdi        # 6054a0 <buf_offset>
  401290:	e8 86 0c 00 00       	callq  401f1b <launch>
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
  4017c3:	e8 52 03 00 00       	callq  401b1a <Gets>
  4017c8:	b8 01 00 00 00       	mov    $0x1,%eax
  4017cd:	48 83 c4 38          	add    $0x38,%rsp
  4017d1:	c3                   	retq   

00000000004017d2 <touch1>:
  4017d2:	48 83 ec 08          	sub    $0x8,%rsp
  4017d6:	c7 05 1c 3d 20 00 01 	movl   $0x1,0x203d1c(%rip)        # 6054fc <vlevel>
  4017dd:	00 00 00 
  4017e0:	bf 48 30 40 00       	mov    $0x403048,%edi
  4017e5:	e8 66 f4 ff ff       	callq  400c50 <puts@plt>
  4017ea:	bf 01 00 00 00       	mov    $0x1,%edi
  4017ef:	e8 15 05 00 00       	callq  401d09 <validate>
  4017f4:	bf 00 00 00 00       	mov    $0x0,%edi
  4017f9:	e8 f2 f5 ff ff       	callq  400df0 <exit@plt>

00000000004017fe <touch2>:
  4017fe:	48 83 ec 08          	sub    $0x8,%rsp
  401802:	89 fe                	mov    %edi,%esi
  401804:	c7 05 ee 3c 20 00 02 	movl   $0x2,0x203cee(%rip)        # 6054fc <vlevel>
  40180b:	00 00 00 
  40180e:	3b 3d f0 3c 20 00    	cmp    0x203cf0(%rip),%edi        # 605504 <cookie>
  401814:	75 1b                	jne    401831 <touch2+0x33>
  401816:	bf 70 30 40 00       	mov    $0x403070,%edi
  40181b:	b8 00 00 00 00       	mov    $0x0,%eax
  401820:	e8 5b f4 ff ff       	callq  400c80 <printf@plt>
  401825:	bf 02 00 00 00       	mov    $0x2,%edi
  40182a:	e8 da 04 00 00       	callq  401d09 <validate>
  40182f:	eb 19                	jmp    40184a <touch2+0x4c>
  401831:	bf 98 30 40 00       	mov    $0x403098,%edi
  401836:	b8 00 00 00 00       	mov    $0x0,%eax
  40183b:	e8 40 f4 ff ff       	callq  400c80 <printf@plt>
  401840:	bf 02 00 00 00       	mov    $0x2,%edi
  401845:	e8 71 05 00 00       	callq  401dbb <fail>
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
  40189f:	be 65 30 40 00       	mov    $0x403065,%esi
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
  4018d6:	c7 05 1c 3c 20 00 03 	movl   $0x3,0x203c1c(%rip)        # 6054fc <vlevel>
  4018dd:	00 00 00 
  4018e0:	48 89 fe             	mov    %rdi,%rsi
  4018e3:	8b 3d 1b 3c 20 00    	mov    0x203c1b(%rip),%edi        # 605504 <cookie>
  4018e9:	e8 66 ff ff ff       	callq  401854 <hexmatch>
  4018ee:	85 c0                	test   %eax,%eax
  4018f0:	74 1e                	je     401910 <touch3+0x3e>
  4018f2:	48 89 de             	mov    %rbx,%rsi
  4018f5:	bf c0 30 40 00       	mov    $0x4030c0,%edi
  4018fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4018ff:	e8 7c f3 ff ff       	callq  400c80 <printf@plt>
  401904:	bf 03 00 00 00       	mov    $0x3,%edi
  401909:	e8 fb 03 00 00       	callq  401d09 <validate>
  40190e:	eb 1c                	jmp    40192c <touch3+0x5a>
  401910:	48 89 de             	mov    %rbx,%rsi
  401913:	bf e8 30 40 00       	mov    $0x4030e8,%edi
  401918:	b8 00 00 00 00       	mov    $0x0,%eax
  40191d:	e8 5e f3 ff ff       	callq  400c80 <printf@plt>
  401922:	bf 03 00 00 00       	mov    $0x3,%edi
  401927:	e8 8f 04 00 00       	callq  401dbb <fail>
  40192c:	bf 00 00 00 00       	mov    $0x0,%edi
  401931:	e8 ba f4 ff ff       	callq  400df0 <exit@plt>

0000000000401936 <test>:
  401936:	48 83 ec 08          	sub    $0x8,%rsp
  40193a:	b8 00 00 00 00       	mov    $0x0,%eax
  40193f:	e8 78 fe ff ff       	callq  4017bc <getbuf>
  401944:	89 c6                	mov    %eax,%esi
  401946:	bf 10 31 40 00       	mov    $0x403110,%edi
  40194b:	b8 00 00 00 00       	mov    $0x0,%eax
  401950:	e8 2b f3 ff ff       	callq  400c80 <printf@plt>
  401955:	48 83 c4 08          	add    $0x8,%rsp
  401959:	c3                   	retq   

000000000040195a <start_farm>:
  40195a:	b8 01 00 00 00       	mov    $0x1,%eax
  40195f:	c3                   	retq   

0000000000401960 <setval_285>:
  401960:	c7 07 58 c3 69 4c    	movl   $0x4c69c358,(%rdi)
  401966:	c3                   	retq   

0000000000401967 <getval_153>:
  401967:	b8 d2 18 c3 09       	mov    $0x9c318d2,%eax
  40196c:	c3                   	retq   

000000000040196d <setval_437>:
  40196d:	c7 07 48 89 c7 90    	movl   $0x90c78948,(%rdi)
  401973:	c3                   	retq   

0000000000401974 <addval_326>:
  401974:	8d 87 0b 58 89 c7    	lea    -0x3876a7f5(%rdi),%eax
  40197a:	c3                   	retq   

000000000040197b <addval_162>:
  40197b:	8d 87 c8 a6 18 c3    	lea    -0x3ce75938(%rdi),%eax
  401981:	c3                   	retq   

0000000000401982 <getval_238>:
  401982:	b8 48 89 c7 c1       	mov    $0xc1c78948,%eax
  401987:	c3                   	retq   

0000000000401988 <getval_128>:
  401988:	b8 58 90 c3 23       	mov    $0x23c39058,%eax
  40198d:	c3                   	retq   

000000000040198e <setval_197>:
  40198e:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  401994:	c3                   	retq   

0000000000401995 <mid_farm>:
  401995:	b8 01 00 00 00       	mov    $0x1,%eax
  40199a:	c3                   	retq   

000000000040199b <add_xy>:
  40199b:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  40199f:	c3                   	retq   

00000000004019a0 <getval_377>:
  4019a0:	b8 89 c2 90 c3       	mov    $0xc390c289,%eax
  4019a5:	c3                   	retq   

00000000004019a6 <addval_331>:
  4019a6:	8d 87 89 c2 78 c0    	lea    -0x3f873d77(%rdi),%eax
  4019ac:	c3                   	retq   

00000000004019ad <addval_472>:
  4019ad:	8d 87 89 c2 90 c3    	lea    -0x3c6f3d77(%rdi),%eax
  4019b3:	c3                   	retq   

00000000004019b4 <getval_484>:
  4019b4:	b8 c9 ce 08 db       	mov    $0xdb08cec9,%eax
  4019b9:	c3                   	retq   

00000000004019ba <setval_307>:
  4019ba:	c7 07 89 d1 60 c9    	movl   $0xc960d189,(%rdi)
  4019c0:	c3                   	retq   

00000000004019c1 <addval_275>:
  4019c1:	8d 87 ce 48 89 e0    	lea    -0x1f76b732(%rdi),%eax
  4019c7:	c3                   	retq   

00000000004019c8 <addval_110>:
  4019c8:	8d 87 89 ce 91 90    	lea    -0x6f6e3177(%rdi),%eax
  4019ce:	c3                   	retq   

00000000004019cf <setval_414>:
  4019cf:	c7 07 d3 09 d1 90    	movl   $0x90d109d3,(%rdi)
  4019d5:	c3                   	retq   

00000000004019d6 <setval_350>:
  4019d6:	c7 07 89 ce c2 5f    	movl   $0x5fc2ce89,(%rdi)
  4019dc:	c3                   	retq   

00000000004019dd <getval_411>:
  4019dd:	b8 81 d1 c3 0c       	mov    $0xcc3d181,%eax
  4019e2:	c3                   	retq   

00000000004019e3 <setval_427>:
  4019e3:	c7 07 89 d1 28 db    	movl   $0xdb28d189,(%rdi)
  4019e9:	c3                   	retq   

00000000004019ea <setval_186>:
  4019ea:	c7 07 89 d1 a4 c0    	movl   $0xc0a4d189,(%rdi)
  4019f0:	c3                   	retq   

00000000004019f1 <addval_430>:
  4019f1:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  4019f7:	c3                   	retq   

00000000004019f8 <getval_228>:
  4019f8:	b8 58 89 e0 90       	mov    $0x90e08958,%eax
  4019fd:	c3                   	retq   

00000000004019fe <getval_242>:
  4019fe:	b8 48 89 e0 c7       	mov    $0xc7e08948,%eax
  401a03:	c3                   	retq   

0000000000401a04 <getval_379>:
  401a04:	b8 fe 89 ce c2       	mov    $0xc2ce89fe,%eax
  401a09:	c3                   	retq   

0000000000401a0a <setval_317>:
  401a0a:	c7 07 48 8d e0 90    	movl   $0x90e08d48,(%rdi)
  401a10:	c3                   	retq   

0000000000401a11 <addval_219>:
  401a11:	8d 87 8b ce 90 90    	lea    -0x6f6f3175(%rdi),%eax
  401a17:	c3                   	retq   

0000000000401a18 <addval_205>:
  401a18:	8d 87 89 ce 84 c9    	lea    -0x367b3177(%rdi),%eax
  401a1e:	c3                   	retq   

0000000000401a1f <setval_104>:
  401a1f:	c7 07 48 89 e0 91    	movl   $0x91e08948,(%rdi)
  401a25:	c3                   	retq   

0000000000401a26 <getval_371>:
  401a26:	b8 48 81 e0 c3       	mov    $0xc3e08148,%eax
  401a2b:	c3                   	retq   

0000000000401a2c <setval_122>:
  401a2c:	c7 07 81 d1 90 c3    	movl   $0xc390d181,(%rdi)
  401a32:	c3                   	retq   

0000000000401a33 <setval_240>:
  401a33:	c7 07 89 d1 84 d2    	movl   $0xd284d189,(%rdi)
  401a39:	c3                   	retq   

0000000000401a3a <getval_258>:
  401a3a:	b8 89 d1 20 c9       	mov    $0xc920d189,%eax
  401a3f:	c3                   	retq   

0000000000401a40 <setval_217>:
  401a40:	c7 07 89 c2 30 d2    	movl   $0xd230c289,(%rdi)
  401a46:	c3                   	retq   

0000000000401a47 <getval_137>:
  401a47:	b8 8d c2 90 90       	mov    $0x9090c28d,%eax
  401a4c:	c3                   	retq   

0000000000401a4d <addval_483>:
  401a4d:	8d 87 89 c2 c7 f0    	lea    -0xf383d77(%rdi),%eax
  401a53:	c3                   	retq   

0000000000401a54 <setval_413>:
  401a54:	c7 07 09 c2 90 90    	movl   $0x9090c209,(%rdi)
  401a5a:	c3                   	retq   

0000000000401a5b <addval_130>:
  401a5b:	8d 87 8d ce 84 c0    	lea    -0x3f7b3173(%rdi),%eax
  401a61:	c3                   	retq   

0000000000401a62 <setval_354>:
  401a62:	c7 07 89 ce 38 db    	movl   $0xdb38ce89,(%rdi)
  401a68:	c3                   	retq   

0000000000401a69 <getval_407>:
  401a69:	b8 48 89 e0 c7       	mov    $0xc7e08948,%eax
  401a6e:	c3                   	retq   

0000000000401a6f <addval_473>:
  401a6f:	8d 87 89 c2 28 c0    	lea    -0x3fd73d77(%rdi),%eax
  401a75:	c3                   	retq   

0000000000401a76 <end_farm>:
  401a76:	b8 01 00 00 00       	mov    $0x1,%eax
  401a7b:	c3                   	retq   
  401a7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401a80 <save_char>:
  401a80:	8b 05 9e 46 20 00    	mov    0x20469e(%rip),%eax        # 606124 <gets_cnt>
  401a86:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401a8b:	7f 49                	jg     401ad6 <save_char+0x56>
  401a8d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401a90:	89 f9                	mov    %edi,%ecx
  401a92:	c0 e9 04             	shr    $0x4,%cl
  401a95:	83 e1 0f             	and    $0xf,%ecx
  401a98:	0f b6 b1 30 34 40 00 	movzbl 0x403430(%rcx),%esi
  401a9f:	48 63 ca             	movslq %edx,%rcx
  401aa2:	40 88 b1 20 55 60 00 	mov    %sil,0x605520(%rcx)
  401aa9:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401aac:	83 e7 0f             	and    $0xf,%edi
  401aaf:	0f b6 b7 30 34 40 00 	movzbl 0x403430(%rdi),%esi
  401ab6:	48 63 c9             	movslq %ecx,%rcx
  401ab9:	40 88 b1 20 55 60 00 	mov    %sil,0x605520(%rcx)
  401ac0:	83 c2 02             	add    $0x2,%edx
  401ac3:	48 63 d2             	movslq %edx,%rdx
  401ac6:	c6 82 20 55 60 00 20 	movb   $0x20,0x605520(%rdx)
  401acd:	83 c0 01             	add    $0x1,%eax
  401ad0:	89 05 4e 46 20 00    	mov    %eax,0x20464e(%rip)        # 606124 <gets_cnt>
  401ad6:	f3 c3                	repz retq 

0000000000401ad8 <save_term>:
  401ad8:	8b 05 46 46 20 00    	mov    0x204646(%rip),%eax        # 606124 <gets_cnt>
  401ade:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401ae1:	48 98                	cltq   
  401ae3:	c6 80 20 55 60 00 00 	movb   $0x0,0x605520(%rax)
  401aea:	c3                   	retq   

0000000000401aeb <check_fail>:
  401aeb:	48 83 ec 08          	sub    $0x8,%rsp
  401aef:	0f be 35 32 46 20 00 	movsbl 0x204632(%rip),%esi        # 606128 <target_prefix>
  401af6:	b9 20 55 60 00       	mov    $0x605520,%ecx
  401afb:	8b 15 f7 39 20 00    	mov    0x2039f7(%rip),%edx        # 6054f8 <check_level>
  401b01:	bf 33 31 40 00       	mov    $0x403133,%edi
  401b06:	b8 00 00 00 00       	mov    $0x0,%eax
  401b0b:	e8 70 f1 ff ff       	callq  400c80 <printf@plt>
  401b10:	bf 01 00 00 00       	mov    $0x1,%edi
  401b15:	e8 d6 f2 ff ff       	callq  400df0 <exit@plt>

0000000000401b1a <Gets>:
  401b1a:	41 54                	push   %r12
  401b1c:	55                   	push   %rbp
  401b1d:	53                   	push   %rbx
  401b1e:	49 89 fc             	mov    %rdi,%r12
  401b21:	c7 05 f9 45 20 00 00 	movl   $0x0,0x2045f9(%rip)        # 606124 <gets_cnt>
  401b28:	00 00 00 
  401b2b:	48 89 fb             	mov    %rdi,%rbx
  401b2e:	eb 11                	jmp    401b41 <Gets+0x27>
  401b30:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401b34:	88 03                	mov    %al,(%rbx)
  401b36:	0f b6 f8             	movzbl %al,%edi
  401b39:	e8 42 ff ff ff       	callq  401a80 <save_char>
  401b3e:	48 89 eb             	mov    %rbp,%rbx
  401b41:	48 8b 3d a8 39 20 00 	mov    0x2039a8(%rip),%rdi        # 6054f0 <infile>
  401b48:	e8 13 f2 ff ff       	callq  400d60 <_IO_getc@plt>
  401b4d:	83 f8 ff             	cmp    $0xffffffff,%eax
  401b50:	74 05                	je     401b57 <Gets+0x3d>
  401b52:	83 f8 0a             	cmp    $0xa,%eax
  401b55:	75 d9                	jne    401b30 <Gets+0x16>
  401b57:	c6 03 00             	movb   $0x0,(%rbx)
  401b5a:	b8 00 00 00 00       	mov    $0x0,%eax
  401b5f:	e8 74 ff ff ff       	callq  401ad8 <save_term>
  401b64:	4c 89 e0             	mov    %r12,%rax
  401b67:	5b                   	pop    %rbx
  401b68:	5d                   	pop    %rbp
  401b69:	41 5c                	pop    %r12
  401b6b:	c3                   	retq   

0000000000401b6c <notify_server>:
  401b6c:	83 3d 95 39 20 00 00 	cmpl   $0x0,0x203995(%rip)        # 605508 <is_checker>
  401b73:	0f 85 8e 01 00 00    	jne    401d07 <notify_server+0x19b>
  401b79:	53                   	push   %rbx
  401b7a:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401b81:	89 fb                	mov    %edi,%ebx
  401b83:	8b 05 9b 45 20 00    	mov    0x20459b(%rip),%eax        # 606124 <gets_cnt>
  401b89:	83 c0 64             	add    $0x64,%eax
  401b8c:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401b91:	7e 19                	jle    401bac <notify_server+0x40>
  401b93:	bf 68 32 40 00       	mov    $0x403268,%edi
  401b98:	b8 00 00 00 00       	mov    $0x0,%eax
  401b9d:	e8 de f0 ff ff       	callq  400c80 <printf@plt>
  401ba2:	bf 01 00 00 00       	mov    $0x1,%edi
  401ba7:	e8 44 f2 ff ff       	callq  400df0 <exit@plt>
  401bac:	44 0f be 0d 74 45 20 	movsbl 0x204574(%rip),%r9d        # 606128 <target_prefix>
  401bb3:	00 
  401bb4:	83 3d ed 38 20 00 00 	cmpl   $0x0,0x2038ed(%rip)        # 6054a8 <notify>
  401bbb:	74 09                	je     401bc6 <notify_server+0x5a>
  401bbd:	44 8b 05 3c 39 20 00 	mov    0x20393c(%rip),%r8d        # 605500 <authkey>
  401bc4:	eb 06                	jmp    401bcc <notify_server+0x60>
  401bc6:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401bcc:	85 db                	test   %ebx,%ebx
  401bce:	74 07                	je     401bd7 <notify_server+0x6b>
  401bd0:	b9 49 31 40 00       	mov    $0x403149,%ecx
  401bd5:	eb 05                	jmp    401bdc <notify_server+0x70>
  401bd7:	b9 4e 31 40 00       	mov    $0x40314e,%ecx
  401bdc:	48 c7 44 24 08 20 55 	movq   $0x605520,0x8(%rsp)
  401be3:	60 00 
  401be5:	89 34 24             	mov    %esi,(%rsp)
  401be8:	8b 15 7a 35 20 00    	mov    0x20357a(%rip),%edx        # 605168 <target_id>
  401bee:	be 53 31 40 00       	mov    $0x403153,%esi
  401bf3:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  401bfa:	00 
  401bfb:	b8 00 00 00 00       	mov    $0x0,%eax
  401c00:	e8 db f1 ff ff       	callq  400de0 <sprintf@plt>
  401c05:	83 3d 9c 38 20 00 00 	cmpl   $0x0,0x20389c(%rip)        # 6054a8 <notify>
  401c0c:	74 78                	je     401c86 <notify_server+0x11a>
  401c0e:	85 db                	test   %ebx,%ebx
  401c10:	74 68                	je     401c7a <notify_server+0x10e>
  401c12:	4c 8d 4c 24 10       	lea    0x10(%rsp),%r9
  401c17:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401c1d:	48 8d 8c 24 10 20 00 	lea    0x2010(%rsp),%rcx
  401c24:	00 
  401c25:	48 8b 15 44 35 20 00 	mov    0x203544(%rip),%rdx        # 605170 <lab>
  401c2c:	48 8b 35 45 35 20 00 	mov    0x203545(%rip),%rsi        # 605178 <course>
  401c33:	48 8b 3d 26 35 20 00 	mov    0x203526(%rip),%rdi        # 605160 <user_id>
  401c3a:	e8 94 0f 00 00       	callq  402bd3 <driver_post>
  401c3f:	85 c0                	test   %eax,%eax
  401c41:	79 1e                	jns    401c61 <notify_server+0xf5>
  401c43:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  401c48:	bf 6f 31 40 00       	mov    $0x40316f,%edi
  401c4d:	b8 00 00 00 00       	mov    $0x0,%eax
  401c52:	e8 29 f0 ff ff       	callq  400c80 <printf@plt>
  401c57:	bf 01 00 00 00       	mov    $0x1,%edi
  401c5c:	e8 8f f1 ff ff       	callq  400df0 <exit@plt>
  401c61:	bf 98 32 40 00       	mov    $0x403298,%edi
  401c66:	e8 e5 ef ff ff       	callq  400c50 <puts@plt>
  401c6b:	bf 7b 31 40 00       	mov    $0x40317b,%edi
  401c70:	e8 db ef ff ff       	callq  400c50 <puts@plt>
  401c75:	e9 85 00 00 00       	jmpq   401cff <notify_server+0x193>
  401c7a:	bf 85 31 40 00       	mov    $0x403185,%edi
  401c7f:	e8 cc ef ff ff       	callq  400c50 <puts@plt>
  401c84:	eb 79                	jmp    401cff <notify_server+0x193>
  401c86:	85 db                	test   %ebx,%ebx
  401c88:	74 08                	je     401c92 <notify_server+0x126>
  401c8a:	be 49 31 40 00       	mov    $0x403149,%esi
  401c8f:	90                   	nop
  401c90:	eb 05                	jmp    401c97 <notify_server+0x12b>
  401c92:	be 4e 31 40 00       	mov    $0x40314e,%esi
  401c97:	bf d0 32 40 00       	mov    $0x4032d0,%edi
  401c9c:	b8 00 00 00 00       	mov    $0x0,%eax
  401ca1:	e8 da ef ff ff       	callq  400c80 <printf@plt>
  401ca6:	48 8b 35 b3 34 20 00 	mov    0x2034b3(%rip),%rsi        # 605160 <user_id>
  401cad:	bf 8c 31 40 00       	mov    $0x40318c,%edi
  401cb2:	b8 00 00 00 00       	mov    $0x0,%eax
  401cb7:	e8 c4 ef ff ff       	callq  400c80 <printf@plt>
  401cbc:	48 8b 35 b5 34 20 00 	mov    0x2034b5(%rip),%rsi        # 605178 <course>
  401cc3:	bf 99 31 40 00       	mov    $0x403199,%edi
  401cc8:	b8 00 00 00 00       	mov    $0x0,%eax
  401ccd:	e8 ae ef ff ff       	callq  400c80 <printf@plt>
  401cd2:	48 8b 35 97 34 20 00 	mov    0x203497(%rip),%rsi        # 605170 <lab>
  401cd9:	bf a5 31 40 00       	mov    $0x4031a5,%edi
  401cde:	b8 00 00 00 00       	mov    $0x0,%eax
  401ce3:	e8 98 ef ff ff       	callq  400c80 <printf@plt>
  401ce8:	48 8d b4 24 10 20 00 	lea    0x2010(%rsp),%rsi
  401cef:	00 
  401cf0:	bf ae 31 40 00       	mov    $0x4031ae,%edi
  401cf5:	b8 00 00 00 00       	mov    $0x0,%eax
  401cfa:	e8 81 ef ff ff       	callq  400c80 <printf@plt>
  401cff:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401d06:	5b                   	pop    %rbx
  401d07:	f3 c3                	repz retq 

0000000000401d09 <validate>:
  401d09:	53                   	push   %rbx
  401d0a:	89 fb                	mov    %edi,%ebx
  401d0c:	83 3d f5 37 20 00 00 	cmpl   $0x0,0x2037f5(%rip)        # 605508 <is_checker>
  401d13:	74 60                	je     401d75 <validate+0x6c>
  401d15:	39 3d e1 37 20 00    	cmp    %edi,0x2037e1(%rip)        # 6054fc <vlevel>
  401d1b:	74 14                	je     401d31 <validate+0x28>
  401d1d:	bf ba 31 40 00       	mov    $0x4031ba,%edi
  401d22:	e8 29 ef ff ff       	callq  400c50 <puts@plt>
  401d27:	b8 00 00 00 00       	mov    $0x0,%eax
  401d2c:	e8 ba fd ff ff       	callq  401aeb <check_fail>
  401d31:	8b 35 c1 37 20 00    	mov    0x2037c1(%rip),%esi        # 6054f8 <check_level>
  401d37:	39 fe                	cmp    %edi,%esi
  401d39:	74 1b                	je     401d56 <validate+0x4d>
  401d3b:	89 fa                	mov    %edi,%edx
  401d3d:	bf f8 32 40 00       	mov    $0x4032f8,%edi
  401d42:	b8 00 00 00 00       	mov    $0x0,%eax
  401d47:	e8 34 ef ff ff       	callq  400c80 <printf@plt>
  401d4c:	b8 00 00 00 00       	mov    $0x0,%eax
  401d51:	e8 95 fd ff ff       	callq  401aeb <check_fail>
  401d56:	0f be 35 cb 43 20 00 	movsbl 0x2043cb(%rip),%esi        # 606128 <target_prefix>
  401d5d:	b9 20 55 60 00       	mov    $0x605520,%ecx
  401d62:	89 fa                	mov    %edi,%edx
  401d64:	bf d8 31 40 00       	mov    $0x4031d8,%edi
  401d69:	b8 00 00 00 00       	mov    $0x0,%eax
  401d6e:	e8 0d ef ff ff       	callq  400c80 <printf@plt>
  401d73:	eb 44                	jmp    401db9 <validate+0xb0>
  401d75:	39 3d 81 37 20 00    	cmp    %edi,0x203781(%rip)        # 6054fc <vlevel>
  401d7b:	74 18                	je     401d95 <validate+0x8c>
  401d7d:	bf ba 31 40 00       	mov    $0x4031ba,%edi
  401d82:	e8 c9 ee ff ff       	callq  400c50 <puts@plt>
  401d87:	89 de                	mov    %ebx,%esi
  401d89:	bf 00 00 00 00       	mov    $0x0,%edi
  401d8e:	e8 d9 fd ff ff       	callq  401b6c <notify_server>
  401d93:	eb 24                	jmp    401db9 <validate+0xb0>
  401d95:	0f be 15 8c 43 20 00 	movsbl 0x20438c(%rip),%edx        # 606128 <target_prefix>
  401d9c:	89 fe                	mov    %edi,%esi
  401d9e:	bf 20 33 40 00       	mov    $0x403320,%edi
  401da3:	b8 00 00 00 00       	mov    $0x0,%eax
  401da8:	e8 d3 ee ff ff       	callq  400c80 <printf@plt>
  401dad:	89 de                	mov    %ebx,%esi
  401daf:	bf 01 00 00 00       	mov    $0x1,%edi
  401db4:	e8 b3 fd ff ff       	callq  401b6c <notify_server>
  401db9:	5b                   	pop    %rbx
  401dba:	c3                   	retq   

0000000000401dbb <fail>:
  401dbb:	48 83 ec 08          	sub    $0x8,%rsp
  401dbf:	83 3d 42 37 20 00 00 	cmpl   $0x0,0x203742(%rip)        # 605508 <is_checker>
  401dc6:	74 0a                	je     401dd2 <fail+0x17>
  401dc8:	b8 00 00 00 00       	mov    $0x0,%eax
  401dcd:	e8 19 fd ff ff       	callq  401aeb <check_fail>
  401dd2:	89 fe                	mov    %edi,%esi
  401dd4:	bf 00 00 00 00       	mov    $0x0,%edi
  401dd9:	e8 8e fd ff ff       	callq  401b6c <notify_server>
  401dde:	48 83 c4 08          	add    $0x8,%rsp
  401de2:	c3                   	retq   

0000000000401de3 <bushandler>:
  401de3:	48 83 ec 08          	sub    $0x8,%rsp
  401de7:	83 3d 1a 37 20 00 00 	cmpl   $0x0,0x20371a(%rip)        # 605508 <is_checker>
  401dee:	74 14                	je     401e04 <bushandler+0x21>
  401df0:	bf ed 31 40 00       	mov    $0x4031ed,%edi
  401df5:	e8 56 ee ff ff       	callq  400c50 <puts@plt>
  401dfa:	b8 00 00 00 00       	mov    $0x0,%eax
  401dff:	e8 e7 fc ff ff       	callq  401aeb <check_fail>
  401e04:	bf 58 33 40 00       	mov    $0x403358,%edi
  401e09:	e8 42 ee ff ff       	callq  400c50 <puts@plt>
  401e0e:	bf f7 31 40 00       	mov    $0x4031f7,%edi
  401e13:	e8 38 ee ff ff       	callq  400c50 <puts@plt>
  401e18:	be 00 00 00 00       	mov    $0x0,%esi
  401e1d:	bf 00 00 00 00       	mov    $0x0,%edi
  401e22:	e8 45 fd ff ff       	callq  401b6c <notify_server>
  401e27:	bf 01 00 00 00       	mov    $0x1,%edi
  401e2c:	e8 bf ef ff ff       	callq  400df0 <exit@plt>

0000000000401e31 <seghandler>:
  401e31:	48 83 ec 08          	sub    $0x8,%rsp
  401e35:	83 3d cc 36 20 00 00 	cmpl   $0x0,0x2036cc(%rip)        # 605508 <is_checker>
  401e3c:	74 14                	je     401e52 <seghandler+0x21>
  401e3e:	bf 0d 32 40 00       	mov    $0x40320d,%edi
  401e43:	e8 08 ee ff ff       	callq  400c50 <puts@plt>
  401e48:	b8 00 00 00 00       	mov    $0x0,%eax
  401e4d:	e8 99 fc ff ff       	callq  401aeb <check_fail>
  401e52:	bf 78 33 40 00       	mov    $0x403378,%edi
  401e57:	e8 f4 ed ff ff       	callq  400c50 <puts@plt>
  401e5c:	bf f7 31 40 00       	mov    $0x4031f7,%edi
  401e61:	e8 ea ed ff ff       	callq  400c50 <puts@plt>
  401e66:	be 00 00 00 00       	mov    $0x0,%esi
  401e6b:	bf 00 00 00 00       	mov    $0x0,%edi
  401e70:	e8 f7 fc ff ff       	callq  401b6c <notify_server>
  401e75:	bf 01 00 00 00       	mov    $0x1,%edi
  401e7a:	e8 71 ef ff ff       	callq  400df0 <exit@plt>

0000000000401e7f <illegalhandler>:
  401e7f:	48 83 ec 08          	sub    $0x8,%rsp
  401e83:	83 3d 7e 36 20 00 00 	cmpl   $0x0,0x20367e(%rip)        # 605508 <is_checker>
  401e8a:	74 14                	je     401ea0 <illegalhandler+0x21>
  401e8c:	bf 20 32 40 00       	mov    $0x403220,%edi
  401e91:	e8 ba ed ff ff       	callq  400c50 <puts@plt>
  401e96:	b8 00 00 00 00       	mov    $0x0,%eax
  401e9b:	e8 4b fc ff ff       	callq  401aeb <check_fail>
  401ea0:	bf a0 33 40 00       	mov    $0x4033a0,%edi
  401ea5:	e8 a6 ed ff ff       	callq  400c50 <puts@plt>
  401eaa:	bf f7 31 40 00       	mov    $0x4031f7,%edi
  401eaf:	e8 9c ed ff ff       	callq  400c50 <puts@plt>
  401eb4:	be 00 00 00 00       	mov    $0x0,%esi
  401eb9:	bf 00 00 00 00       	mov    $0x0,%edi
  401ebe:	e8 a9 fc ff ff       	callq  401b6c <notify_server>
  401ec3:	bf 01 00 00 00       	mov    $0x1,%edi
  401ec8:	e8 23 ef ff ff       	callq  400df0 <exit@plt>

0000000000401ecd <sigalrmhandler>:
  401ecd:	48 83 ec 08          	sub    $0x8,%rsp
  401ed1:	83 3d 30 36 20 00 00 	cmpl   $0x0,0x203630(%rip)        # 605508 <is_checker>
  401ed8:	74 14                	je     401eee <sigalrmhandler+0x21>
  401eda:	bf 34 32 40 00       	mov    $0x403234,%edi
  401edf:	e8 6c ed ff ff       	callq  400c50 <puts@plt>
  401ee4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee9:	e8 fd fb ff ff       	callq  401aeb <check_fail>
  401eee:	be 05 00 00 00       	mov    $0x5,%esi
  401ef3:	bf d0 33 40 00       	mov    $0x4033d0,%edi
  401ef8:	b8 00 00 00 00       	mov    $0x0,%eax
  401efd:	e8 7e ed ff ff       	callq  400c80 <printf@plt>
  401f02:	be 00 00 00 00       	mov    $0x0,%esi
  401f07:	bf 00 00 00 00       	mov    $0x0,%edi
  401f0c:	e8 5b fc ff ff       	callq  401b6c <notify_server>
  401f11:	bf 01 00 00 00       	mov    $0x1,%edi
  401f16:	e8 d5 ee ff ff       	callq  400df0 <exit@plt>

0000000000401f1b <launch>:
  401f1b:	55                   	push   %rbp
  401f1c:	48 89 e5             	mov    %rsp,%rbp
  401f1f:	48 89 fa             	mov    %rdi,%rdx
  401f22:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401f26:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401f2a:	48 29 c4             	sub    %rax,%rsp
  401f2d:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401f32:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401f36:	be f4 00 00 00       	mov    $0xf4,%esi
  401f3b:	e8 50 ed ff ff       	callq  400c90 <memset@plt>
  401f40:	48 8b 05 79 35 20 00 	mov    0x203579(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  401f47:	48 39 05 a2 35 20 00 	cmp    %rax,0x2035a2(%rip)        # 6054f0 <infile>
  401f4e:	75 0f                	jne    401f5f <launch+0x44>
  401f50:	bf 3c 32 40 00       	mov    $0x40323c,%edi
  401f55:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5a:	e8 21 ed ff ff       	callq  400c80 <printf@plt>
  401f5f:	c7 05 93 35 20 00 00 	movl   $0x0,0x203593(%rip)        # 6054fc <vlevel>
  401f66:	00 00 00 
  401f69:	b8 00 00 00 00       	mov    $0x0,%eax
  401f6e:	e8 c3 f9 ff ff       	callq  401936 <test>
  401f73:	83 3d 8e 35 20 00 00 	cmpl   $0x0,0x20358e(%rip)        # 605508 <is_checker>
  401f7a:	74 14                	je     401f90 <launch+0x75>
  401f7c:	bf 49 32 40 00       	mov    $0x403249,%edi
  401f81:	e8 ca ec ff ff       	callq  400c50 <puts@plt>
  401f86:	b8 00 00 00 00       	mov    $0x0,%eax
  401f8b:	e8 5b fb ff ff       	callq  401aeb <check_fail>
  401f90:	bf 54 32 40 00       	mov    $0x403254,%edi
  401f95:	e8 b6 ec ff ff       	callq  400c50 <puts@plt>
  401f9a:	c9                   	leaveq 
  401f9b:	c3                   	retq   

0000000000401f9c <stable_launch>:
  401f9c:	53                   	push   %rbx
  401f9d:	48 89 3d 44 35 20 00 	mov    %rdi,0x203544(%rip)        # 6054e8 <global_offset>
  401fa4:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401faa:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401fb0:	b9 32 01 00 00       	mov    $0x132,%ecx
  401fb5:	ba 07 00 00 00       	mov    $0x7,%edx
  401fba:	be 00 00 10 00       	mov    $0x100000,%esi
  401fbf:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401fc4:	e8 a7 ec ff ff       	callq  400c70 <mmap@plt>
  401fc9:	48 89 c3             	mov    %rax,%rbx
  401fcc:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401fd2:	74 32                	je     402006 <stable_launch+0x6a>
  401fd4:	be 00 00 10 00       	mov    $0x100000,%esi
  401fd9:	48 89 c7             	mov    %rax,%rdi
  401fdc:	e8 9f ed ff ff       	callq  400d80 <munmap@plt>
  401fe1:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401fe6:	be 08 34 40 00       	mov    $0x403408,%esi
  401feb:	48 8b 3d de 34 20 00 	mov    0x2034de(%rip),%rdi        # 6054d0 <stderr@@GLIBC_2.2.5>
  401ff2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff7:	e8 04 ed ff ff       	callq  400d00 <fprintf@plt>
  401ffc:	bf 01 00 00 00       	mov    $0x1,%edi
  402001:	e8 ea ed ff ff       	callq  400df0 <exit@plt>
  402006:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40200d:	48 89 15 1c 41 20 00 	mov    %rdx,0x20411c(%rip)        # 606130 <stack_top>
  402014:	48 89 e0             	mov    %rsp,%rax
  402017:	48 89 d4             	mov    %rdx,%rsp
  40201a:	48 89 c2             	mov    %rax,%rdx
  40201d:	48 89 15 bc 34 20 00 	mov    %rdx,0x2034bc(%rip)        # 6054e0 <global_save_stack>
  402024:	48 8b 3d bd 34 20 00 	mov    0x2034bd(%rip),%rdi        # 6054e8 <global_offset>
  40202b:	e8 eb fe ff ff       	callq  401f1b <launch>
  402030:	48 8b 05 a9 34 20 00 	mov    0x2034a9(%rip),%rax        # 6054e0 <global_save_stack>
  402037:	48 89 c4             	mov    %rax,%rsp
  40203a:	be 00 00 10 00       	mov    $0x100000,%esi
  40203f:	48 89 df             	mov    %rbx,%rdi
  402042:	e8 39 ed ff ff       	callq  400d80 <munmap@plt>
  402047:	5b                   	pop    %rbx
  402048:	c3                   	retq   
  402049:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402050 <rio_readinitb>:
  402050:	89 37                	mov    %esi,(%rdi)
  402052:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402059:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40205d:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402061:	c3                   	retq   

0000000000402062 <sigalrm_handler>:
  402062:	48 83 ec 08          	sub    $0x8,%rsp
  402066:	ba 00 00 00 00       	mov    $0x0,%edx
  40206b:	be 40 34 40 00       	mov    $0x403440,%esi
  402070:	48 8b 3d 59 34 20 00 	mov    0x203459(%rip),%rdi        # 6054d0 <stderr@@GLIBC_2.2.5>
  402077:	b8 00 00 00 00       	mov    $0x0,%eax
  40207c:	e8 7f ec ff ff       	callq  400d00 <fprintf@plt>
  402081:	bf 01 00 00 00       	mov    $0x1,%edi
  402086:	e8 65 ed ff ff       	callq  400df0 <exit@plt>

000000000040208b <urlencode>:
  40208b:	41 54                	push   %r12
  40208d:	55                   	push   %rbp
  40208e:	53                   	push   %rbx
  40208f:	48 83 ec 10          	sub    $0x10,%rsp
  402093:	48 89 fb             	mov    %rdi,%rbx
  402096:	48 89 f5             	mov    %rsi,%rbp
  402099:	b8 00 00 00 00       	mov    $0x0,%eax
  40209e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4020a5:	f2 ae                	repnz scas %es:(%rdi),%al
  4020a7:	48 f7 d1             	not    %rcx
  4020aa:	8d 41 ff             	lea    -0x1(%rcx),%eax
  4020ad:	e9 93 00 00 00       	jmpq   402145 <urlencode+0xba>
  4020b2:	0f b6 13             	movzbl (%rbx),%edx
  4020b5:	80 fa 2a             	cmp    $0x2a,%dl
  4020b8:	0f 94 c1             	sete   %cl
  4020bb:	80 fa 2d             	cmp    $0x2d,%dl
  4020be:	0f 94 c0             	sete   %al
  4020c1:	08 c1                	or     %al,%cl
  4020c3:	75 1f                	jne    4020e4 <urlencode+0x59>
  4020c5:	80 fa 2e             	cmp    $0x2e,%dl
  4020c8:	74 1a                	je     4020e4 <urlencode+0x59>
  4020ca:	80 fa 5f             	cmp    $0x5f,%dl
  4020cd:	74 15                	je     4020e4 <urlencode+0x59>
  4020cf:	8d 42 d0             	lea    -0x30(%rdx),%eax
  4020d2:	3c 09                	cmp    $0x9,%al
  4020d4:	76 0e                	jbe    4020e4 <urlencode+0x59>
  4020d6:	8d 42 bf             	lea    -0x41(%rdx),%eax
  4020d9:	3c 19                	cmp    $0x19,%al
  4020db:	76 07                	jbe    4020e4 <urlencode+0x59>
  4020dd:	8d 42 9f             	lea    -0x61(%rdx),%eax
  4020e0:	3c 19                	cmp    $0x19,%al
  4020e2:	77 09                	ja     4020ed <urlencode+0x62>
  4020e4:	88 55 00             	mov    %dl,0x0(%rbp)
  4020e7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4020eb:	eb 51                	jmp    40213e <urlencode+0xb3>
  4020ed:	80 fa 20             	cmp    $0x20,%dl
  4020f0:	75 0a                	jne    4020fc <urlencode+0x71>
  4020f2:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4020f6:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4020fa:	eb 42                	jmp    40213e <urlencode+0xb3>
  4020fc:	8d 42 e0             	lea    -0x20(%rdx),%eax
  4020ff:	3c 5f                	cmp    $0x5f,%al
  402101:	0f 96 c1             	setbe  %cl
  402104:	80 fa 09             	cmp    $0x9,%dl
  402107:	0f 94 c0             	sete   %al
  40210a:	08 c1                	or     %al,%cl
  40210c:	74 45                	je     402153 <urlencode+0xc8>
  40210e:	0f b6 d2             	movzbl %dl,%edx
  402111:	be d8 34 40 00       	mov    $0x4034d8,%esi
  402116:	48 89 e7             	mov    %rsp,%rdi
  402119:	b8 00 00 00 00       	mov    $0x0,%eax
  40211e:	e8 bd ec ff ff       	callq  400de0 <sprintf@plt>
  402123:	0f b6 04 24          	movzbl (%rsp),%eax
  402127:	88 45 00             	mov    %al,0x0(%rbp)
  40212a:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40212f:	88 45 01             	mov    %al,0x1(%rbp)
  402132:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402137:	88 45 02             	mov    %al,0x2(%rbp)
  40213a:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40213e:	48 83 c3 01          	add    $0x1,%rbx
  402142:	44 89 e0             	mov    %r12d,%eax
  402145:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402149:	85 c0                	test   %eax,%eax
  40214b:	0f 85 61 ff ff ff    	jne    4020b2 <urlencode+0x27>
  402151:	eb 05                	jmp    402158 <urlencode+0xcd>
  402153:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402158:	48 83 c4 10          	add    $0x10,%rsp
  40215c:	5b                   	pop    %rbx
  40215d:	5d                   	pop    %rbp
  40215e:	41 5c                	pop    %r12
  402160:	c3                   	retq   

0000000000402161 <rio_writen>:
  402161:	41 55                	push   %r13
  402163:	41 54                	push   %r12
  402165:	55                   	push   %rbp
  402166:	53                   	push   %rbx
  402167:	48 83 ec 08          	sub    $0x8,%rsp
  40216b:	41 89 fc             	mov    %edi,%r12d
  40216e:	48 89 f5             	mov    %rsi,%rbp
  402171:	49 89 d5             	mov    %rdx,%r13
  402174:	48 89 d3             	mov    %rdx,%rbx
  402177:	eb 28                	jmp    4021a1 <rio_writen+0x40>
  402179:	48 89 da             	mov    %rbx,%rdx
  40217c:	48 89 ee             	mov    %rbp,%rsi
  40217f:	44 89 e7             	mov    %r12d,%edi
  402182:	e8 d9 ea ff ff       	callq  400c60 <write@plt>
  402187:	48 85 c0             	test   %rax,%rax
  40218a:	7f 0f                	jg     40219b <rio_writen+0x3a>
  40218c:	e8 7f ea ff ff       	callq  400c10 <__errno_location@plt>
  402191:	83 38 04             	cmpl   $0x4,(%rax)
  402194:	75 15                	jne    4021ab <rio_writen+0x4a>
  402196:	b8 00 00 00 00       	mov    $0x0,%eax
  40219b:	48 29 c3             	sub    %rax,%rbx
  40219e:	48 01 c5             	add    %rax,%rbp
  4021a1:	48 85 db             	test   %rbx,%rbx
  4021a4:	75 d3                	jne    402179 <rio_writen+0x18>
  4021a6:	4c 89 e8             	mov    %r13,%rax
  4021a9:	eb 07                	jmp    4021b2 <rio_writen+0x51>
  4021ab:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4021b2:	48 83 c4 08          	add    $0x8,%rsp
  4021b6:	5b                   	pop    %rbx
  4021b7:	5d                   	pop    %rbp
  4021b8:	41 5c                	pop    %r12
  4021ba:	41 5d                	pop    %r13
  4021bc:	c3                   	retq   

00000000004021bd <rio_read>:
  4021bd:	41 56                	push   %r14
  4021bf:	41 55                	push   %r13
  4021c1:	41 54                	push   %r12
  4021c3:	55                   	push   %rbp
  4021c4:	53                   	push   %rbx
  4021c5:	48 89 fb             	mov    %rdi,%rbx
  4021c8:	49 89 f6             	mov    %rsi,%r14
  4021cb:	49 89 d5             	mov    %rdx,%r13
  4021ce:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  4021d2:	eb 2a                	jmp    4021fe <rio_read+0x41>
  4021d4:	ba 00 20 00 00       	mov    $0x2000,%edx
  4021d9:	4c 89 e6             	mov    %r12,%rsi
  4021dc:	8b 3b                	mov    (%rbx),%edi
  4021de:	e8 dd ea ff ff       	callq  400cc0 <read@plt>
  4021e3:	89 43 04             	mov    %eax,0x4(%rbx)
  4021e6:	85 c0                	test   %eax,%eax
  4021e8:	79 0c                	jns    4021f6 <rio_read+0x39>
  4021ea:	e8 21 ea ff ff       	callq  400c10 <__errno_location@plt>
  4021ef:	83 38 04             	cmpl   $0x4,(%rax)
  4021f2:	74 0a                	je     4021fe <rio_read+0x41>
  4021f4:	eb 37                	jmp    40222d <rio_read+0x70>
  4021f6:	85 c0                	test   %eax,%eax
  4021f8:	74 3c                	je     402236 <rio_read+0x79>
  4021fa:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  4021fe:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402201:	85 ed                	test   %ebp,%ebp
  402203:	7e cf                	jle    4021d4 <rio_read+0x17>
  402205:	89 e8                	mov    %ebp,%eax
  402207:	4c 39 e8             	cmp    %r13,%rax
  40220a:	72 03                	jb     40220f <rio_read+0x52>
  40220c:	44 89 ed             	mov    %r13d,%ebp
  40220f:	4c 63 e5             	movslq %ebp,%r12
  402212:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402216:	4c 89 e2             	mov    %r12,%rdx
  402219:	4c 89 f7             	mov    %r14,%rdi
  40221c:	e8 0f eb ff ff       	callq  400d30 <memcpy@plt>
  402221:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402225:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402228:	4c 89 e0             	mov    %r12,%rax
  40222b:	eb 0e                	jmp    40223b <rio_read+0x7e>
  40222d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402234:	eb 05                	jmp    40223b <rio_read+0x7e>
  402236:	b8 00 00 00 00       	mov    $0x0,%eax
  40223b:	5b                   	pop    %rbx
  40223c:	5d                   	pop    %rbp
  40223d:	41 5c                	pop    %r12
  40223f:	41 5d                	pop    %r13
  402241:	41 5e                	pop    %r14
  402243:	c3                   	retq   

0000000000402244 <rio_readlineb>:
  402244:	41 55                	push   %r13
  402246:	41 54                	push   %r12
  402248:	55                   	push   %rbp
  402249:	53                   	push   %rbx
  40224a:	48 83 ec 18          	sub    $0x18,%rsp
  40224e:	49 89 fd             	mov    %rdi,%r13
  402251:	48 89 f5             	mov    %rsi,%rbp
  402254:	49 89 d4             	mov    %rdx,%r12
  402257:	bb 01 00 00 00       	mov    $0x1,%ebx
  40225c:	eb 3d                	jmp    40229b <rio_readlineb+0x57>
  40225e:	ba 01 00 00 00       	mov    $0x1,%edx
  402263:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402268:	4c 89 ef             	mov    %r13,%rdi
  40226b:	e8 4d ff ff ff       	callq  4021bd <rio_read>
  402270:	83 f8 01             	cmp    $0x1,%eax
  402273:	75 12                	jne    402287 <rio_readlineb+0x43>
  402275:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402279:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  40227e:	88 45 00             	mov    %al,0x0(%rbp)
  402281:	3c 0a                	cmp    $0xa,%al
  402283:	75 0f                	jne    402294 <rio_readlineb+0x50>
  402285:	eb 1b                	jmp    4022a2 <rio_readlineb+0x5e>
  402287:	85 c0                	test   %eax,%eax
  402289:	75 23                	jne    4022ae <rio_readlineb+0x6a>
  40228b:	48 83 fb 01          	cmp    $0x1,%rbx
  40228f:	90                   	nop
  402290:	75 13                	jne    4022a5 <rio_readlineb+0x61>
  402292:	eb 23                	jmp    4022b7 <rio_readlineb+0x73>
  402294:	48 83 c3 01          	add    $0x1,%rbx
  402298:	48 89 d5             	mov    %rdx,%rbp
  40229b:	4c 39 e3             	cmp    %r12,%rbx
  40229e:	72 be                	jb     40225e <rio_readlineb+0x1a>
  4022a0:	eb 03                	jmp    4022a5 <rio_readlineb+0x61>
  4022a2:	48 89 d5             	mov    %rdx,%rbp
  4022a5:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4022a9:	48 89 d8             	mov    %rbx,%rax
  4022ac:	eb 0e                	jmp    4022bc <rio_readlineb+0x78>
  4022ae:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022b5:	eb 05                	jmp    4022bc <rio_readlineb+0x78>
  4022b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4022bc:	48 83 c4 18          	add    $0x18,%rsp
  4022c0:	5b                   	pop    %rbx
  4022c1:	5d                   	pop    %rbp
  4022c2:	41 5c                	pop    %r12
  4022c4:	41 5d                	pop    %r13
  4022c6:	c3                   	retq   

00000000004022c7 <submitr>:
  4022c7:	41 57                	push   %r15
  4022c9:	41 56                	push   %r14
  4022cb:	41 55                	push   %r13
  4022cd:	41 54                	push   %r12
  4022cf:	55                   	push   %rbp
  4022d0:	53                   	push   %rbx
  4022d1:	48 81 ec 48 a0 00 00 	sub    $0xa048,%rsp
  4022d8:	49 89 fc             	mov    %rdi,%r12
  4022db:	89 74 24 04          	mov    %esi,0x4(%rsp)
  4022df:	49 89 d7             	mov    %rdx,%r15
  4022e2:	49 89 ce             	mov    %rcx,%r14
  4022e5:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  4022ea:	4d 89 cd             	mov    %r9,%r13
  4022ed:	48 8b 9c 24 80 a0 00 	mov    0xa080(%rsp),%rbx
  4022f4:	00 
  4022f5:	c7 84 24 1c 20 00 00 	movl   $0x0,0x201c(%rsp)
  4022fc:	00 00 00 00 
  402300:	ba 00 00 00 00       	mov    $0x0,%edx
  402305:	be 01 00 00 00       	mov    $0x1,%esi
  40230a:	bf 02 00 00 00       	mov    $0x2,%edi
  40230f:	e8 fc ea ff ff       	callq  400e10 <socket@plt>
  402314:	89 c5                	mov    %eax,%ebp
  402316:	85 c0                	test   %eax,%eax
  402318:	79 4e                	jns    402368 <submitr+0xa1>
  40231a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402321:	3a 20 43 
  402324:	48 89 03             	mov    %rax,(%rbx)
  402327:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40232e:	20 75 6e 
  402331:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402335:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40233c:	74 6f 20 
  40233f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402343:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40234a:	65 20 73 
  40234d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402351:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402358:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  40235e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402363:	e9 68 06 00 00       	jmpq   4029d0 <submitr+0x709>
  402368:	4c 89 e7             	mov    %r12,%rdi
  40236b:	e8 80 e9 ff ff       	callq  400cf0 <gethostbyname@plt>
  402370:	48 85 c0             	test   %rax,%rax
  402373:	75 67                	jne    4023dc <submitr+0x115>
  402375:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40237c:	3a 20 44 
  40237f:	48 89 03             	mov    %rax,(%rbx)
  402382:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402389:	20 75 6e 
  40238c:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402390:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402397:	74 6f 20 
  40239a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40239e:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4023a5:	76 65 20 
  4023a8:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4023ac:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4023b3:	72 20 61 
  4023b6:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4023ba:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  4023c1:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  4023c7:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  4023cb:	89 ef                	mov    %ebp,%edi
  4023cd:	e8 de e8 ff ff       	callq  400cb0 <close@plt>
  4023d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023d7:	e9 f4 05 00 00       	jmpq   4029d0 <submitr+0x709>
  4023dc:	48 c7 84 24 30 a0 00 	movq   $0x0,0xa030(%rsp)
  4023e3:	00 00 00 00 00 
  4023e8:	48 c7 84 24 38 a0 00 	movq   $0x0,0xa038(%rsp)
  4023ef:	00 00 00 00 00 
  4023f4:	66 c7 84 24 30 a0 00 	movw   $0x2,0xa030(%rsp)
  4023fb:	00 02 00 
  4023fe:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402402:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402406:	48 8d b4 24 34 a0 00 	lea    0xa034(%rsp),%rsi
  40240d:	00 
  40240e:	48 8b 39             	mov    (%rcx),%rdi
  402411:	e8 7a e9 ff ff       	callq  400d90 <bcopy@plt>
  402416:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  40241b:	66 c1 c8 08          	ror    $0x8,%ax
  40241f:	66 89 84 24 32 a0 00 	mov    %ax,0xa032(%rsp)
  402426:	00 
  402427:	ba 10 00 00 00       	mov    $0x10,%edx
  40242c:	48 8d b4 24 30 a0 00 	lea    0xa030(%rsp),%rsi
  402433:	00 
  402434:	89 ef                	mov    %ebp,%edi
  402436:	e8 c5 e9 ff ff       	callq  400e00 <connect@plt>
  40243b:	85 c0                	test   %eax,%eax
  40243d:	79 59                	jns    402498 <submitr+0x1d1>
  40243f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402446:	3a 20 55 
  402449:	48 89 03             	mov    %rax,(%rbx)
  40244c:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402453:	20 74 6f 
  402456:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40245a:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402461:	65 63 74 
  402464:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402468:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40246f:	68 65 20 
  402472:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402476:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  40247d:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402483:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402487:	89 ef                	mov    %ebp,%edi
  402489:	e8 22 e8 ff ff       	callq  400cb0 <close@plt>
  40248e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402493:	e9 38 05 00 00       	jmpq   4029d0 <submitr+0x709>
  402498:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40249f:	4c 89 ef             	mov    %r13,%rdi
  4024a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4024a7:	48 89 d1             	mov    %rdx,%rcx
  4024aa:	f2 ae                	repnz scas %es:(%rdi),%al
  4024ac:	48 f7 d1             	not    %rcx
  4024af:	48 89 ce             	mov    %rcx,%rsi
  4024b2:	4c 89 ff             	mov    %r15,%rdi
  4024b5:	48 89 d1             	mov    %rdx,%rcx
  4024b8:	f2 ae                	repnz scas %es:(%rdi),%al
  4024ba:	48 f7 d1             	not    %rcx
  4024bd:	49 89 c8             	mov    %rcx,%r8
  4024c0:	4c 89 f7             	mov    %r14,%rdi
  4024c3:	48 89 d1             	mov    %rdx,%rcx
  4024c6:	f2 ae                	repnz scas %es:(%rdi),%al
  4024c8:	49 29 c8             	sub    %rcx,%r8
  4024cb:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4024d0:	48 89 d1             	mov    %rdx,%rcx
  4024d3:	f2 ae                	repnz scas %es:(%rdi),%al
  4024d5:	49 29 c8             	sub    %rcx,%r8
  4024d8:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  4024dd:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  4024e2:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4024e8:	76 72                	jbe    40255c <submitr+0x295>
  4024ea:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4024f1:	3a 20 52 
  4024f4:	48 89 03             	mov    %rax,(%rbx)
  4024f7:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4024fe:	20 73 74 
  402501:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402505:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40250c:	74 6f 6f 
  40250f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402513:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  40251a:	65 2e 20 
  40251d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402521:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402528:	61 73 65 
  40252b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40252f:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402536:	49 54 52 
  402539:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40253d:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402544:	55 46 00 
  402547:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40254b:	89 ef                	mov    %ebp,%edi
  40254d:	e8 5e e7 ff ff       	callq  400cb0 <close@plt>
  402552:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402557:	e9 74 04 00 00       	jmpq   4029d0 <submitr+0x709>
  40255c:	48 8d b4 24 20 40 00 	lea    0x4020(%rsp),%rsi
  402563:	00 
  402564:	b9 00 04 00 00       	mov    $0x400,%ecx
  402569:	b8 00 00 00 00       	mov    $0x0,%eax
  40256e:	48 89 f7             	mov    %rsi,%rdi
  402571:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402574:	4c 89 ef             	mov    %r13,%rdi
  402577:	e8 0f fb ff ff       	callq  40208b <urlencode>
  40257c:	85 c0                	test   %eax,%eax
  40257e:	0f 89 8a 00 00 00    	jns    40260e <submitr+0x347>
  402584:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40258b:	3a 20 52 
  40258e:	48 89 03             	mov    %rax,(%rbx)
  402591:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402598:	20 73 74 
  40259b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40259f:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4025a6:	63 6f 6e 
  4025a9:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025ad:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4025b4:	20 61 6e 
  4025b7:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4025bb:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4025c2:	67 61 6c 
  4025c5:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4025c9:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4025d0:	6e 70 72 
  4025d3:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4025d7:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4025de:	6c 65 20 
  4025e1:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4025e5:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4025ec:	63 74 65 
  4025ef:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4025f3:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4025f9:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4025fd:	89 ef                	mov    %ebp,%edi
  4025ff:	e8 ac e6 ff ff       	callq  400cb0 <close@plt>
  402604:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402609:	e9 c2 03 00 00       	jmpq   4029d0 <submitr+0x709>
  40260e:	4d 89 e1             	mov    %r12,%r9
  402611:	4c 8d 84 24 20 40 00 	lea    0x4020(%rsp),%r8
  402618:	00 
  402619:	4c 89 f9             	mov    %r15,%rcx
  40261c:	4c 89 f2             	mov    %r14,%rdx
  40261f:	be 68 34 40 00       	mov    $0x403468,%esi
  402624:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  40262b:	00 
  40262c:	b8 00 00 00 00       	mov    $0x0,%eax
  402631:	e8 aa e7 ff ff       	callq  400de0 <sprintf@plt>
  402636:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  40263d:	00 
  40263e:	b8 00 00 00 00       	mov    $0x0,%eax
  402643:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40264a:	f2 ae                	repnz scas %es:(%rdi),%al
  40264c:	48 f7 d1             	not    %rcx
  40264f:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402653:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40265a:	00 
  40265b:	89 ef                	mov    %ebp,%edi
  40265d:	e8 ff fa ff ff       	callq  402161 <rio_writen>
  402662:	48 85 c0             	test   %rax,%rax
  402665:	79 6e                	jns    4026d5 <submitr+0x40e>
  402667:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40266e:	3a 20 43 
  402671:	48 89 03             	mov    %rax,(%rbx)
  402674:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40267b:	20 75 6e 
  40267e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402682:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402689:	74 6f 20 
  40268c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402690:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402697:	20 74 6f 
  40269a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40269e:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4026a5:	72 65 73 
  4026a8:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026ac:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  4026b3:	65 72 76 
  4026b6:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026ba:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  4026c0:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  4026c4:	89 ef                	mov    %ebp,%edi
  4026c6:	e8 e5 e5 ff ff       	callq  400cb0 <close@plt>
  4026cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026d0:	e9 fb 02 00 00       	jmpq   4029d0 <submitr+0x709>
  4026d5:	89 ee                	mov    %ebp,%esi
  4026d7:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4026de:	00 
  4026df:	e8 6c f9 ff ff       	callq  402050 <rio_readinitb>
  4026e4:	ba 00 20 00 00       	mov    $0x2000,%edx
  4026e9:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4026f0:	00 
  4026f1:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4026f8:	00 
  4026f9:	e8 46 fb ff ff       	callq  402244 <rio_readlineb>
  4026fe:	48 85 c0             	test   %rax,%rax
  402701:	7f 7d                	jg     402780 <submitr+0x4b9>
  402703:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40270a:	3a 20 43 
  40270d:	48 89 03             	mov    %rax,(%rbx)
  402710:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402717:	20 75 6e 
  40271a:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40271e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402725:	74 6f 20 
  402728:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40272c:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402733:	66 69 72 
  402736:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40273a:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402741:	61 64 65 
  402744:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402748:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  40274f:	6d 20 72 
  402752:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402756:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  40275d:	20 73 65 
  402760:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402764:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  40276b:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  40276f:	89 ef                	mov    %ebp,%edi
  402771:	e8 3a e5 ff ff       	callq  400cb0 <close@plt>
  402776:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40277b:	e9 50 02 00 00       	jmpq   4029d0 <submitr+0x709>
  402780:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  402785:	48 8d 8c 24 1c 20 00 	lea    0x201c(%rsp),%rcx
  40278c:	00 
  40278d:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  402794:	00 
  402795:	be df 34 40 00       	mov    $0x4034df,%esi
  40279a:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  4027a1:	00 
  4027a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4027a7:	e8 c4 e5 ff ff       	callq  400d70 <__isoc99_sscanf@plt>
  4027ac:	e9 98 00 00 00       	jmpq   402849 <submitr+0x582>
  4027b1:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027b6:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4027bd:	00 
  4027be:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4027c5:	00 
  4027c6:	e8 79 fa ff ff       	callq  402244 <rio_readlineb>
  4027cb:	48 85 c0             	test   %rax,%rax
  4027ce:	7f 79                	jg     402849 <submitr+0x582>
  4027d0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4027d7:	3a 20 43 
  4027da:	48 89 03             	mov    %rax,(%rbx)
  4027dd:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4027e4:	20 75 6e 
  4027e7:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4027eb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4027f2:	74 6f 20 
  4027f5:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4027f9:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402800:	68 65 61 
  402803:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402807:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40280e:	66 72 6f 
  402811:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402815:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  40281c:	20 72 65 
  40281f:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402823:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  40282a:	73 65 72 
  40282d:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402831:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402838:	89 ef                	mov    %ebp,%edi
  40283a:	e8 71 e4 ff ff       	callq  400cb0 <close@plt>
  40283f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402844:	e9 87 01 00 00       	jmpq   4029d0 <submitr+0x709>
  402849:	0f b6 84 24 20 60 00 	movzbl 0x6020(%rsp),%eax
  402850:	00 
  402851:	83 e8 0d             	sub    $0xd,%eax
  402854:	75 15                	jne    40286b <submitr+0x5a4>
  402856:	0f b6 84 24 21 60 00 	movzbl 0x6021(%rsp),%eax
  40285d:	00 
  40285e:	83 e8 0a             	sub    $0xa,%eax
  402861:	75 08                	jne    40286b <submitr+0x5a4>
  402863:	0f b6 84 24 22 60 00 	movzbl 0x6022(%rsp),%eax
  40286a:	00 
  40286b:	85 c0                	test   %eax,%eax
  40286d:	0f 85 3e ff ff ff    	jne    4027b1 <submitr+0x4ea>
  402873:	ba 00 20 00 00       	mov    $0x2000,%edx
  402878:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40287f:	00 
  402880:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402887:	00 
  402888:	e8 b7 f9 ff ff       	callq  402244 <rio_readlineb>
  40288d:	48 85 c0             	test   %rax,%rax
  402890:	0f 8f 83 00 00 00    	jg     402919 <submitr+0x652>
  402896:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40289d:	3a 20 43 
  4028a0:	48 89 03             	mov    %rax,(%rbx)
  4028a3:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4028aa:	20 75 6e 
  4028ad:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4028b1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028b8:	74 6f 20 
  4028bb:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4028bf:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  4028c6:	73 74 61 
  4028c9:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4028cd:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4028d4:	65 73 73 
  4028d7:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4028db:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  4028e2:	72 6f 6d 
  4028e5:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4028e9:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  4028f0:	6c 74 20 
  4028f3:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4028f7:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  4028fe:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402904:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402908:	89 ef                	mov    %ebp,%edi
  40290a:	e8 a1 e3 ff ff       	callq  400cb0 <close@plt>
  40290f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402914:	e9 b7 00 00 00       	jmpq   4029d0 <submitr+0x709>
  402919:	8b 94 24 1c 20 00 00 	mov    0x201c(%rsp),%edx
  402920:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402926:	74 28                	je     402950 <submitr+0x689>
  402928:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  40292d:	be a8 34 40 00       	mov    $0x4034a8,%esi
  402932:	48 89 df             	mov    %rbx,%rdi
  402935:	b8 00 00 00 00       	mov    $0x0,%eax
  40293a:	e8 a1 e4 ff ff       	callq  400de0 <sprintf@plt>
  40293f:	89 ef                	mov    %ebp,%edi
  402941:	e8 6a e3 ff ff       	callq  400cb0 <close@plt>
  402946:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40294b:	e9 80 00 00 00       	jmpq   4029d0 <submitr+0x709>
  402950:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  402957:	00 
  402958:	48 89 df             	mov    %rbx,%rdi
  40295b:	e8 e0 e2 ff ff       	callq  400c40 <strcpy@plt>
  402960:	89 ef                	mov    %ebp,%edi
  402962:	e8 49 e3 ff ff       	callq  400cb0 <close@plt>
  402967:	0f b6 03             	movzbl (%rbx),%eax
  40296a:	83 e8 4f             	sub    $0x4f,%eax
  40296d:	75 18                	jne    402987 <submitr+0x6c0>
  40296f:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
  402973:	83 ea 4b             	sub    $0x4b,%edx
  402976:	75 11                	jne    402989 <submitr+0x6c2>
  402978:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  40297c:	83 ea 0a             	sub    $0xa,%edx
  40297f:	75 08                	jne    402989 <submitr+0x6c2>
  402981:	0f b6 53 03          	movzbl 0x3(%rbx),%edx
  402985:	eb 02                	jmp    402989 <submitr+0x6c2>
  402987:	89 c2                	mov    %eax,%edx
  402989:	85 d2                	test   %edx,%edx
  40298b:	74 30                	je     4029bd <submitr+0x6f6>
  40298d:	bf f0 34 40 00       	mov    $0x4034f0,%edi
  402992:	b9 05 00 00 00       	mov    $0x5,%ecx
  402997:	48 89 de             	mov    %rbx,%rsi
  40299a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40299c:	0f 97 c1             	seta   %cl
  40299f:	0f 92 c2             	setb   %dl
  4029a2:	38 d1                	cmp    %dl,%cl
  4029a4:	74 1e                	je     4029c4 <submitr+0x6fd>
  4029a6:	85 c0                	test   %eax,%eax
  4029a8:	75 0d                	jne    4029b7 <submitr+0x6f0>
  4029aa:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  4029ae:	83 e8 4b             	sub    $0x4b,%eax
  4029b1:	75 04                	jne    4029b7 <submitr+0x6f0>
  4029b3:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
  4029b7:	85 c0                	test   %eax,%eax
  4029b9:	75 10                	jne    4029cb <submitr+0x704>
  4029bb:	eb 13                	jmp    4029d0 <submitr+0x709>
  4029bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4029c2:	eb 0c                	jmp    4029d0 <submitr+0x709>
  4029c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4029c9:	eb 05                	jmp    4029d0 <submitr+0x709>
  4029cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029d0:	48 81 c4 48 a0 00 00 	add    $0xa048,%rsp
  4029d7:	5b                   	pop    %rbx
  4029d8:	5d                   	pop    %rbp
  4029d9:	41 5c                	pop    %r12
  4029db:	41 5d                	pop    %r13
  4029dd:	41 5e                	pop    %r14
  4029df:	41 5f                	pop    %r15
  4029e1:	c3                   	retq   

00000000004029e2 <init_timeout>:
  4029e2:	53                   	push   %rbx
  4029e3:	89 fb                	mov    %edi,%ebx
  4029e5:	85 ff                	test   %edi,%edi
  4029e7:	74 1f                	je     402a08 <init_timeout+0x26>
  4029e9:	85 ff                	test   %edi,%edi
  4029eb:	79 05                	jns    4029f2 <init_timeout+0x10>
  4029ed:	bb 00 00 00 00       	mov    $0x0,%ebx
  4029f2:	be 62 20 40 00       	mov    $0x402062,%esi
  4029f7:	bf 0e 00 00 00       	mov    $0xe,%edi
  4029fc:	e8 df e2 ff ff       	callq  400ce0 <signal@plt>
  402a01:	89 df                	mov    %ebx,%edi
  402a03:	e8 98 e2 ff ff       	callq  400ca0 <alarm@plt>
  402a08:	5b                   	pop    %rbx
  402a09:	c3                   	retq   

0000000000402a0a <init_driver>:
  402a0a:	55                   	push   %rbp
  402a0b:	53                   	push   %rbx
  402a0c:	48 83 ec 18          	sub    $0x18,%rsp
  402a10:	48 89 fd             	mov    %rdi,%rbp
  402a13:	be 01 00 00 00       	mov    $0x1,%esi
  402a18:	bf 0d 00 00 00       	mov    $0xd,%edi
  402a1d:	e8 be e2 ff ff       	callq  400ce0 <signal@plt>
  402a22:	be 01 00 00 00       	mov    $0x1,%esi
  402a27:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402a2c:	e8 af e2 ff ff       	callq  400ce0 <signal@plt>
  402a31:	be 01 00 00 00       	mov    $0x1,%esi
  402a36:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402a3b:	e8 a0 e2 ff ff       	callq  400ce0 <signal@plt>
  402a40:	ba 00 00 00 00       	mov    $0x0,%edx
  402a45:	be 01 00 00 00       	mov    $0x1,%esi
  402a4a:	bf 02 00 00 00       	mov    $0x2,%edi
  402a4f:	e8 bc e3 ff ff       	callq  400e10 <socket@plt>
  402a54:	89 c3                	mov    %eax,%ebx
  402a56:	85 c0                	test   %eax,%eax
  402a58:	79 4f                	jns    402aa9 <init_driver+0x9f>
  402a5a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a61:	3a 20 43 
  402a64:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a68:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402a6f:	20 75 6e 
  402a72:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402a76:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a7d:	74 6f 20 
  402a80:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a84:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402a8b:	65 20 73 
  402a8e:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402a92:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402a99:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402a9f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402aa4:	e9 23 01 00 00       	jmpq   402bcc <init_driver+0x1c2>
  402aa9:	bf f5 34 40 00       	mov    $0x4034f5,%edi
  402aae:	e8 3d e2 ff ff       	callq  400cf0 <gethostbyname@plt>
  402ab3:	48 85 c0             	test   %rax,%rax
  402ab6:	75 68                	jne    402b20 <init_driver+0x116>
  402ab8:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402abf:	3a 20 44 
  402ac2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ac6:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402acd:	20 75 6e 
  402ad0:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402ad4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402adb:	74 6f 20 
  402ade:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ae2:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402ae9:	76 65 20 
  402aec:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402af0:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402af7:	72 20 61 
  402afa:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402afe:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402b05:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402b0b:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402b0f:	89 df                	mov    %ebx,%edi
  402b11:	e8 9a e1 ff ff       	callq  400cb0 <close@plt>
  402b16:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b1b:	e9 ac 00 00 00       	jmpq   402bcc <init_driver+0x1c2>
  402b20:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402b27:	00 
  402b28:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402b2f:	00 00 
  402b31:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402b37:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402b3b:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402b3f:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  402b44:	48 8b 39             	mov    (%rcx),%rdi
  402b47:	e8 44 e2 ff ff       	callq  400d90 <bcopy@plt>
  402b4c:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402b53:	ba 10 00 00 00       	mov    $0x10,%edx
  402b58:	48 89 e6             	mov    %rsp,%rsi
  402b5b:	89 df                	mov    %ebx,%edi
  402b5d:	e8 9e e2 ff ff       	callq  400e00 <connect@plt>
  402b62:	85 c0                	test   %eax,%eax
  402b64:	79 50                	jns    402bb6 <init_driver+0x1ac>
  402b66:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402b6d:	3a 20 55 
  402b70:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b74:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402b7b:	20 74 6f 
  402b7e:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402b82:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402b89:	65 63 74 
  402b8c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b90:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402b97:	65 72 76 
  402b9a:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402b9e:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402ba4:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402ba8:	89 df                	mov    %ebx,%edi
  402baa:	e8 01 e1 ff ff       	callq  400cb0 <close@plt>
  402baf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bb4:	eb 16                	jmp    402bcc <init_driver+0x1c2>
  402bb6:	89 df                	mov    %ebx,%edi
  402bb8:	e8 f3 e0 ff ff       	callq  400cb0 <close@plt>
  402bbd:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402bc3:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402bc7:	b8 00 00 00 00       	mov    $0x0,%eax
  402bcc:	48 83 c4 18          	add    $0x18,%rsp
  402bd0:	5b                   	pop    %rbx
  402bd1:	5d                   	pop    %rbp
  402bd2:	c3                   	retq   

0000000000402bd3 <driver_post>:
  402bd3:	53                   	push   %rbx
  402bd4:	48 83 ec 10          	sub    $0x10,%rsp
  402bd8:	4c 89 cb             	mov    %r9,%rbx
  402bdb:	45 85 c0             	test   %r8d,%r8d
  402bde:	74 22                	je     402c02 <driver_post+0x2f>
  402be0:	48 89 ce             	mov    %rcx,%rsi
  402be3:	bf 08 35 40 00       	mov    $0x403508,%edi
  402be8:	b8 00 00 00 00       	mov    $0x0,%eax
  402bed:	e8 8e e0 ff ff       	callq  400c80 <printf@plt>
  402bf2:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402bf7:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402bfb:	b8 00 00 00 00       	mov    $0x0,%eax
  402c00:	eb 39                	jmp    402c3b <driver_post+0x68>
  402c02:	48 85 ff             	test   %rdi,%rdi
  402c05:	74 26                	je     402c2d <driver_post+0x5a>
  402c07:	80 3f 00             	cmpb   $0x0,(%rdi)
  402c0a:	74 21                	je     402c2d <driver_post+0x5a>
  402c0c:	4c 89 0c 24          	mov    %r9,(%rsp)
  402c10:	49 89 c9             	mov    %rcx,%r9
  402c13:	49 89 d0             	mov    %rdx,%r8
  402c16:	48 89 f9             	mov    %rdi,%rcx
  402c19:	48 89 f2             	mov    %rsi,%rdx
  402c1c:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402c21:	bf f5 34 40 00       	mov    $0x4034f5,%edi
  402c26:	e8 9c f6 ff ff       	callq  4022c7 <submitr>
  402c2b:	eb 0e                	jmp    402c3b <driver_post+0x68>
  402c2d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402c32:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402c36:	b8 00 00 00 00       	mov    $0x0,%eax
  402c3b:	48 83 c4 10          	add    $0x10,%rsp
  402c3f:	5b                   	pop    %rbx
  402c40:	c3                   	retq   

0000000000402c41 <check>:
  402c41:	89 f8                	mov    %edi,%eax
  402c43:	c1 e8 1c             	shr    $0x1c,%eax
  402c46:	85 c0                	test   %eax,%eax
  402c48:	74 1d                	je     402c67 <check+0x26>
  402c4a:	b9 00 00 00 00       	mov    $0x0,%ecx
  402c4f:	eb 0b                	jmp    402c5c <check+0x1b>
  402c51:	89 f8                	mov    %edi,%eax
  402c53:	d3 e8                	shr    %cl,%eax
  402c55:	3c 0a                	cmp    $0xa,%al
  402c57:	74 14                	je     402c6d <check+0x2c>
  402c59:	83 c1 08             	add    $0x8,%ecx
  402c5c:	83 f9 1f             	cmp    $0x1f,%ecx
  402c5f:	7e f0                	jle    402c51 <check+0x10>
  402c61:	b8 01 00 00 00       	mov    $0x1,%eax
  402c66:	c3                   	retq   
  402c67:	b8 00 00 00 00       	mov    $0x0,%eax
  402c6c:	c3                   	retq   
  402c6d:	b8 00 00 00 00       	mov    $0x0,%eax
  402c72:	c3                   	retq   

0000000000402c73 <gencookie>:
  402c73:	53                   	push   %rbx
  402c74:	83 c7 01             	add    $0x1,%edi
  402c77:	e8 a4 df ff ff       	callq  400c20 <srandom@plt>
  402c7c:	e8 cf e0 ff ff       	callq  400d50 <random@plt>
  402c81:	89 c3                	mov    %eax,%ebx
  402c83:	89 c7                	mov    %eax,%edi
  402c85:	e8 b7 ff ff ff       	callq  402c41 <check>
  402c8a:	85 c0                	test   %eax,%eax
  402c8c:	74 ee                	je     402c7c <gencookie+0x9>
  402c8e:	89 d8                	mov    %ebx,%eax
  402c90:	5b                   	pop    %rbx
  402c91:	c3                   	retq   
  402c92:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402c99:	00 00 00 
  402c9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402ca0 <__libc_csu_init>:
  402ca0:	41 57                	push   %r15
  402ca2:	41 89 ff             	mov    %edi,%r15d
  402ca5:	41 56                	push   %r14
  402ca7:	49 89 f6             	mov    %rsi,%r14
  402caa:	41 55                	push   %r13
  402cac:	49 89 d5             	mov    %rdx,%r13
  402caf:	41 54                	push   %r12
  402cb1:	4c 8d 25 58 21 20 00 	lea    0x202158(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  402cb8:	55                   	push   %rbp
  402cb9:	48 8d 2d 58 21 20 00 	lea    0x202158(%rip),%rbp        # 604e18 <__do_global_dtors_aux_fini_array_entry>
  402cc0:	53                   	push   %rbx
  402cc1:	4c 29 e5             	sub    %r12,%rbp
  402cc4:	31 db                	xor    %ebx,%ebx
  402cc6:	48 c1 fd 03          	sar    $0x3,%rbp
  402cca:	48 83 ec 08          	sub    $0x8,%rsp
  402cce:	e8 f5 de ff ff       	callq  400bc8 <_init>
  402cd3:	48 85 ed             	test   %rbp,%rbp
  402cd6:	74 1e                	je     402cf6 <__libc_csu_init+0x56>
  402cd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402cdf:	00 
  402ce0:	4c 89 ea             	mov    %r13,%rdx
  402ce3:	4c 89 f6             	mov    %r14,%rsi
  402ce6:	44 89 ff             	mov    %r15d,%edi
  402ce9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402ced:	48 83 c3 01          	add    $0x1,%rbx
  402cf1:	48 39 eb             	cmp    %rbp,%rbx
  402cf4:	75 ea                	jne    402ce0 <__libc_csu_init+0x40>
  402cf6:	48 83 c4 08          	add    $0x8,%rsp
  402cfa:	5b                   	pop    %rbx
  402cfb:	5d                   	pop    %rbp
  402cfc:	41 5c                	pop    %r12
  402cfe:	41 5d                	pop    %r13
  402d00:	41 5e                	pop    %r14
  402d02:	41 5f                	pop    %r15
  402d04:	c3                   	retq   
  402d05:	90                   	nop
  402d06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402d0d:	00 00 00 

0000000000402d10 <__libc_csu_fini>:
  402d10:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402d14 <_fini>:
  402d14:	48 83 ec 08          	sub    $0x8,%rsp
  402d18:	48 83 c4 08          	add    $0x8,%rsp
  402d1c:	c3                   	retq   
