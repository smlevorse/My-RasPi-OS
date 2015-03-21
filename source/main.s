.section .init
.globl _start
_start:

ldr r0,=0x20200000 ; GPIO controller
mov r1,#1				
lsl r1,#18
str r1,[r0,#4]

mov r1,#1
lsl r1,#16
str r1,[r0,#40] 			; Turns on GPIO16, #28 turns it off

loop$:
b loop$
