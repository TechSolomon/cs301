
bb1.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <win>:
#include <stdio.h>
#include <stdlib.h>

void win() {
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
	system("/bin/cat flag.txt");
   4:	bf 00 00 00 00       	mov    edi,0x0	5: R_X86_64_32	.rodata
   9:	e8 00 00 00 00       	call   e <win+0xe>	a: R_X86_64_PC32	system-0x4
	exit(0);
   e:	bf 00 00 00 00       	mov    edi,0x0
  13:	e8 00 00 00 00       	call   18 <vuln>	14: R_X86_64_PC32	exit-0x4

0000000000000018 <vuln>:
}

void vuln() {
  18:	55                   	push   rbp
  19:	48 89 e5             	mov    rbp,rsp
  1c:	48 83 ec 30          	sub    rsp,0x30
	char buf[48];
	puts("Enter the access code: ");
  20:	bf 00 00 00 00       	mov    edi,0x0	21: R_X86_64_32	.rodata+0x12
  25:	e8 00 00 00 00       	call   2a <vuln+0x12>	26: R_X86_64_PC32	puts-0x4
	gets(buf);
  2a:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  2e:	48 89 c7             	mov    rdi,rax
  31:	b8 00 00 00 00       	mov    eax,0x0
  36:	e8 00 00 00 00       	call   3b <vuln+0x23>	37: R_X86_64_PC32	gets-0x4

	if(strcmp(buf, "Sup3rs3cr3tC0de") == 0) {
  3b:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  3f:	be 00 00 00 00       	mov    esi,0x0	40: R_X86_64_32	.rodata+0x2a
  44:	48 89 c7             	mov    rdi,rax
  47:	e8 00 00 00 00       	call   4c <vuln+0x34>	48: R_X86_64_PC32	strcmp-0x4
  4c:	85 c0                	test   eax,eax
  4e:	75 0c                	jne    5c <vuln+0x44>
		puts("Access granted!");
  50:	bf 00 00 00 00       	mov    edi,0x0	51: R_X86_64_32	.rodata+0x3a
  55:	e8 00 00 00 00       	call   5a <vuln+0x42>	56: R_X86_64_PC32	puts-0x4
	}
	else {
		puts("Invalid auth.");
		exit(-1);
	}
}
  5a:	eb 14                	jmp    70 <vuln+0x58>
		puts("Invalid auth.");
  5c:	bf 00 00 00 00       	mov    edi,0x0	5d: R_X86_64_32	.rodata+0x4a
  61:	e8 00 00 00 00       	call   66 <vuln+0x4e>	62: R_X86_64_PC32	puts-0x4
		exit(-1);
  66:	bf ff ff ff ff       	mov    edi,0xffffffff
  6b:	e8 00 00 00 00       	call   70 <vuln+0x58>	6c: R_X86_64_PC32	exit-0x4
}
  70:	c9                   	leave  
  71:	c3                   	ret    

0000000000000072 <main>:

int main() {
  72:	55                   	push   rbp
  73:	48 89 e5             	mov    rbp,rsp
	setbuf(stdout, 0);
  76:	48 8b 05 00 00 00 00 	mov    rax,QWORD PTR [rip+0x0]        # 7d <main+0xb>	79: R_X86_64_PC32	stdout-0x4
  7d:	be 00 00 00 00       	mov    esi,0x0
  82:	48 89 c7             	mov    rdi,rax
  85:	e8 00 00 00 00       	call   8a <main+0x18>	86: R_X86_64_PC32	setbuf-0x4
	setbuf(stdin, 0);
  8a:	48 8b 05 00 00 00 00 	mov    rax,QWORD PTR [rip+0x0]        # 91 <main+0x1f>	8d: R_X86_64_PC32	stdin-0x4
  91:	be 00 00 00 00       	mov    esi,0x0
  96:	48 89 c7             	mov    rdi,rax
  99:	e8 00 00 00 00       	call   9e <main+0x2c>	9a: R_X86_64_PC32	setbuf-0x4
	setbuf(stderr, 0);
  9e:	48 8b 05 00 00 00 00 	mov    rax,QWORD PTR [rip+0x0]        # a5 <main+0x33>	a1: R_X86_64_PC32	stderr-0x4
  a5:	be 00 00 00 00       	mov    esi,0x0
  aa:	48 89 c7             	mov    rdi,rax
  ad:	e8 00 00 00 00       	call   b2 <main+0x40>	ae: R_X86_64_PC32	setbuf-0x4
	vuln();
  b2:	b8 00 00 00 00       	mov    eax,0x0
  b7:	e8 00 00 00 00       	call   bc <main+0x4a>	b8: R_X86_64_PC32	vuln-0x4
	return 0;
  bc:	b8 00 00 00 00       	mov    eax,0x0
}
  c1:	5d                   	pop    rbp
  c2:	c3                   	ret    
