# RUN: llvm-mc %s -triple=riscv64 -mattr=+p -riscv-no-aliases -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK-ASM,CHECK-ASM-AND-OBJ %s
# RUN: llvm-mc -filetype=obj -triple=riscv64 -mattr=+p < %s \
# RUN:     | llvm-objdump --mattr=+p -M no-aliases -d -r - \
# RUN:     | FileCheck --check-prefix=CHECK-ASM-AND-OBJ %s

# CHECK-ASM-AND-OBJ: future s4, 4(a0)
# CHECK-ASM: encoding: [0x77,0x7a,0x45,0x00]
future  x20, 4(x10)

# CHECK-ASM-AND-OBJ: sfuture s5, -4(a1)
# CHECK-ASM: encoding: [0xf7,0xca,0xc5,0xff]
sfuture x21, -4(x11)

# CHECK-ASM-AND-OBJ: rfuture s6, 8(a2)
# CHECK-ASM: encoding: [0x77,0x5b,0x86,0x00]
rfuture x22, 8(x12)

