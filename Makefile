kernel: cexec.asm main.c link.ld
	nasm -f elf32 cexec.asm -o krnlasm.o
	gcc -m32 -c main.c -o krnlc.o
	ld -m elf_i386 -T link.ld -o krnlfex krnlasm.o krnlc.o
