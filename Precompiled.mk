################################################################################
##
## libtock-c build system rules for pre-compiled libraries.
##
## This includes rules to require that pre-compiled libraries be present in the
## `/lib` folder.
##
## Supported pre-compiled libraries:
##
## - newlib
## - libc++
##
################################################################################

# Ensure that this file is only included once.
ifndef PRECOMPILED_MAKEFILE
PRECOMPILED_MAKEFILE = 1

################################################################################
# Newlib Rules
#
# These pre-compiled archives were created using the libtock-c/newlib folder.
################################################################################

# Target to download and extract newlib.
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION):
	cd $(TOCK_USERLAND_BASE_DIR)/lib; ./fetch-newlib.sh $(NEWLIB_VERSION)

# Helper rule to specify newlib as a dependency in the libtock-c build system.
newlib: | $(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)

$(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)/thumb/v6-m/nofp/newlib/libc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)/thumb/v6-m/nofp/newlib/libm.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)/thumb/v7-m/nofp/newlib/libc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)/thumb/v7-m/nofp/newlib/libm.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)/thumb/v7e-m/nofp/newlib/libc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)/thumb/v7e-m/nofp/newlib/libm.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)

$(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)/riscv/rv32i/ilp32/newlib/libc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)/riscv/rv32i/ilp32/newlib/libm.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)/riscv/rv32im/ilp32/newlib/libc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)/riscv/rv32im/ilp32/newlib/libm.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)/riscv/rv32imac/ilp32/newlib/libc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)/riscv/rv32imac/ilp32/newlib/libm.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-newlib-$(NEWLIB_VERSION)

################################################################################
# LIBC++ Rules
#
# These pre-compiled archives were created using the libtock-c/libc++ folder.
################################################################################

# Target to download and extract the C++ libraries.
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0:
	cd $(TOCK_USERLAND_BASE_DIR)/lib; ./fetch-libc++.sh 10.5.0

# Target to download and extract the C++ libraries.
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0:
	cd $(TOCK_USERLAND_BASE_DIR)/lib; ./fetch-libc++.sh 11.4.0

# Target to download and extract the C++ libraries.
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0:
	cd $(TOCK_USERLAND_BASE_DIR)/lib; ./fetch-libc++.sh 12.3.0

# LIBC++ 10.5.0

$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/arm/arm-none-eabi/lib/thumb/v6-m/nofp/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/arm/arm-none-eabi/lib/thumb/v6-m/nofp/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/arm/lib/gcc/arm-none-eabi/10.5.0/thumb/v6-m/nofp/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/arm/arm-none-eabi/lib/thumb/v7-m/nofp/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/arm/arm-none-eabi/lib/thumb/v7-m/nofp/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/arm/lib/gcc/arm-none-eabi/10.5.0/thumb/v7-m/nofp/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/arm/arm-none-eabi/lib/thumb/v7e-m/nofp/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/arm/arm-none-eabi/lib/thumb/v7e-m/nofp/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/arm/lib/gcc/arm-none-eabi/10.5.0/thumb/v7e-m/nofp/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0

$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/riscv/riscv64-unknown-elf/lib/rv32i/ilp32/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/riscv/riscv64-unknown-elf/lib/rv32i/ilp32/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/riscv/lib/gcc/riscv64-unknown-elf/10.5.0/rv32i/ilp32/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/riscv/riscv64-unknown-elf/lib/rv32im/ilp32/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/riscv/riscv64-unknown-elf/lib/rv32im/ilp32/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/riscv/lib/gcc/riscv64-unknown-elf/10.5.0/rv32im/ilp32/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/riscv/riscv64-unknown-elf/lib/rv32imac/ilp32/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/riscv/riscv64-unknown-elf/lib/rv32imac/ilp32/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0/riscv/lib/gcc/riscv64-unknown-elf/10.5.0/rv32imac/ilp32/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-10.5.0

# LIBC++ 11.4.0

$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/arm/arm-none-eabi/lib/thumb/v6-m/nofp/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/arm/arm-none-eabi/lib/thumb/v6-m/nofp/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/arm/lib/gcc/arm-none-eabi/11.4.0/thumb/v6-m/nofp/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/arm/arm-none-eabi/lib/thumb/v7-m/nofp/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/arm/arm-none-eabi/lib/thumb/v7-m/nofp/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/arm/lib/gcc/arm-none-eabi/11.4.0/thumb/v7-m/nofp/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/arm/arm-none-eabi/lib/thumb/v7e-m/nofp/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/arm/arm-none-eabi/lib/thumb/v7e-m/nofp/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/arm/lib/gcc/arm-none-eabi/11.4.0/thumb/v7e-m/nofp/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0

$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/riscv/riscv64-unknown-elf/lib/rv32i/ilp32/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/riscv/riscv64-unknown-elf/lib/rv32i/ilp32/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/riscv/lib/gcc/riscv64-unknown-elf/11.4.0/rv32i/ilp32/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/riscv/riscv64-unknown-elf/lib/rv32im/ilp32/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/riscv/riscv64-unknown-elf/lib/rv32im/ilp32/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/riscv/lib/gcc/riscv64-unknown-elf/11.4.0/rv32im/ilp32/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/riscv/riscv64-unknown-elf/lib/rv32imac/ilp32/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/riscv/riscv64-unknown-elf/lib/rv32imac/ilp32/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0/riscv/lib/gcc/riscv64-unknown-elf/11.4.0/rv32imac/ilp32/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-11.4.0

# LIBC++ 12.3.0

$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/arm/arm-none-eabi/lib/thumb/v6-m/nofp/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/arm/arm-none-eabi/lib/thumb/v6-m/nofp/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/arm/lib/gcc/arm-none-eabi/12.3.0/thumb/v6-m/nofp/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/arm/arm-none-eabi/lib/thumb/v7-m/nofp/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/arm/arm-none-eabi/lib/thumb/v7-m/nofp/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/arm/lib/gcc/arm-none-eabi/12.3.0/thumb/v7-m/nofp/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/arm/arm-none-eabi/lib/thumb/v7e-m/nofp/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/arm/arm-none-eabi/lib/thumb/v7e-m/nofp/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/arm/lib/gcc/arm-none-eabi/12.3.0/thumb/v7e-m/nofp/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0

$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/riscv/riscv64-unknown-elf/lib/rv32i/ilp32/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/riscv/riscv64-unknown-elf/lib/rv32i/ilp32/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/riscv/lib/gcc/riscv64-unknown-elf/12.3.0/rv32i/ilp32/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/riscv/riscv64-unknown-elf/lib/rv32im/ilp32/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/riscv/riscv64-unknown-elf/lib/rv32im/ilp32/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/riscv/lib/gcc/riscv64-unknown-elf/12.3.0/rv32im/ilp32/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/riscv/riscv64-unknown-elf/lib/rv32imac/ilp32/libstdc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/riscv/riscv64-unknown-elf/lib/rv32imac/ilp32/libsupc++.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0
$(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0/riscv/lib/gcc/riscv64-unknown-elf/12.3.0/rv32imac/ilp32/libgcc.a: $(TOCK_USERLAND_BASE_DIR)/lib/libtock-libc++-12.3.0


endif
