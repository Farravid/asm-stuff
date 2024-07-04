rm -f main.o main.elf
nasm -f elf main.asm
gcc main.o -o main.elf -m32 -no-pie
./main.elf "$@"