; Solomon Himelbloom
; CS 241 - Final Project

section .text
global foo

foo:
  mov rax, [my_long]
  ret

section .data
my_long:
  dq 1337
