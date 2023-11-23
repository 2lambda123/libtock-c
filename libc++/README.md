C++ Libraries for libtock-c
===========================

Similarly to libc, we provide a pre-built version of the libc++ libraries so we
can compile with specific flags enabled.

Basic Instructions
------------------

You can create your own libc++ libraries by running `make` in this folder.

1. Build `newlib`.
2. Make sure the newlib version in `Makefile` matches.
3. Install dependencies:

        sudo apt install libmpc-dev

4. Choose the version of GCC you want and run:

        make GCC_VERSION=13.2.0


Docker Instructions
-------------------

To help ensure reproducibility, we also include a Dockerfile which can be used
to create the libc++ libraries.

```bash
cd libtock-c/libc++
docker build -t libtock-c-libcpp .
id=$(docker create libtock-c-libcpp)
docker cp $id:/libtock-c/libc++/libtock-libc++-10.5.0.zip libtock-libc++-10.5.0.zip
docker cp $id:/libtock-c/libc++/libtock-libc++-11.4.0.zip libtock-libc++-11.4.0.zip
docker cp $id:/libtock-c/libc++/libtock-libc++-12.3.0.zip libtock-libc++-12.3.0.zip
```

libtock-libc++ Structure
------------------------

To create the precompiled library we build GCC for both ARM (arm-none-eabi) and
RISC-V (riscv64-unknown-elf) and package the resulting headers and libraries.
We preserve the folder structure from GCC.

```
libtock-libc++-$(GCC_VERSION)/arm
       /arm-none-eabi/include/c++/$(GCC_VERSION)                   # Headers
       /arm-none-eabi/lib/thumb/<sub arch>/nofp                    # libstdc++.a
       /lib/gcc/arm-none-eabi/$(GCC_VERSION)/thumb/<sub arch>/nofp # libgcc.a

libtock-libc++-$(GCC_VERSION)/riscv
       /riscv64-unknown-elf/include/c++/$(GCC_VERSION)              # Headers
       /riscv64-unknown-elf/lib/<sub arch>/ilp32                    # libstdc++.a
       /lib/gcc/riscv64-unknown-elf/$(GCC_VERSION)/<sub arch>/ilp32 # libgcc.a
```
