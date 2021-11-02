gcc -g -c cpp.c
objdump -drwC -Mintel -S cpp.o > cpp.asm
readelf -x .rodata cpp.o > cpp.rodata
gcc -no-pie -o run cpp.o
