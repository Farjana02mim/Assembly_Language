# Assembly Practice

My personal repository for learning and practicing **Assembly language**. It contains small programs, exercises, and experiments written while studying low-level programming.

## Goals

- Understand how the CPU, registers, and memory work
- Learn the instruction set and addressing modes
- Practice system calls, the stack, and procedures
- Build a strong foundation for debugging, reverse engineering, and systems programming

## Repository Structure

```
assembly-practice/
├── README.md
├── 01-basics/          # Hello World, registers, mov, add, sub
├── 02-control-flow/    # cmp, jmp, conditional jumps, loops
├── 03-arithmetic/      # mul, div, number operations
├── 04-strings/         # String handling and I/O
├── 05-stack-procedures/# push, pop, call, ret
├── 06-arrays/          # Arrays and memory addressing
├── 07-syscalls/        # Linux system calls
└── projects/           # Larger mini projects
```

> Folders are added as I progress. Adjust names to match your own layout.

## Tools

| Tool | Purpose |
|------|---------|
| NASM | Assembler |
| ld | Linker |
| GDB | Debugger |
| Make (optional) | Build automation |

Install on Ubuntu/Debian:

```bash
sudo apt update
sudo apt install nasm gdb build-essential
```

## Build & Run

Example for 64-bit Linux (NASM):

```bash
nasm -f elf64 hello.asm -o hello.o
ld hello.o -o hello
./hello
```

For 32-bit:

```bash
nasm -f elf32 hello.asm -o hello.o
ld -m elf_i386 hello.o -o hello
./hello
```

## Debugging with GDB

```bash
nasm -f elf64 -g -F dwarf hello.asm -o hello.o
ld hello.o -o hello
gdb ./hello
```

Useful commands: `break _start`, `run`, `stepi`, `info registers`, `x/16xb $rsp`

## Example: Hello World (x86-64 Linux, NASM)

```nasm
section .data
    msg db "Hello, World!", 10
    len equ $ - msg

section .text
    global _start

_start:
    mov rax, 1        ; sys_write
    mov rdi, 1        ; stdout
    mov rsi, msg
    mov rdx, len
    syscall

    mov rax, 60       ; sys_exit
    xor rdi, rdi
    syscall
```

## Progress Checklist

- [ ] Hello World
- [ ] Registers and data movement
- [ ] Arithmetic operations
- [ ] Conditionals and loops
- [ ] Arrays and strings
- [ ] Stack and procedures
- [ ] System calls
- [ ] Macros
- [ ] Calling C from Assembly
- [ ] Mini projects

## Resources

- [Intel® 64 and IA-32 Architectures Software Developer Manuals](https://www.intel.com/content/www/us/en/developer/articles/technical/intel-sdm.html)
- [NASM Documentation](https://www.nasm.us/docs.php)
- [Linux Syscall Table](https://filippo.io/linux-syscall-table/)

## Notes

Each program includes comments explaining what the code does. Feel free to explore, learn, and suggest improvements.

## License

This project is licensed under the MIT License.
