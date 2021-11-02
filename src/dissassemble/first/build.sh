gcc -g -c bb1.c
objdump -drwC -Mintel -S bb1.o > bb1.asm
readelf -x .rodata bb1.o > bb1.rodata
gcc -no-pie -o run bb1.o
