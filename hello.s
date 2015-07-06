.data
_hello:
	.asciz "hello world\n"
_bye:
	.asciz "bye world\n"

.text
.globl _main
_main:
  subq $8, %rsp

  movq $0, %rdi
  leaq _hello(%rip), %rdi

  call _printf

  movq $0, %rdi
  leaq _bye(%rip), %rdi

  call _printf

  movq $0, %rdi

  call _exit
