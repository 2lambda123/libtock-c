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
