.section .text
.global _start

_start:
eor r0, r0, r0
add r0, r0, #1
add r1, r0, #1
eor r2, r2, r2
ldr r7, =#281
svc 1
add r1, r1, r1
bkpt

