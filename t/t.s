.section .data
msg:    .asciz "Hello, World!\n"

.section .text
.global _start

_start:
    // Write the message to stdout
    mov     x0, #1              // file descriptor (stdout)
    ldr     x1, =msg            // address of the message
    mov     x2, #14             // length of the message
    mov     x8, #64             // syscall number (sys_write)
    svc     #0                  // make the syscall

    // Exit the program
    mov     x0, #0              // exit status
    mov     x8, #93             // syscall number (sys_exit)
    svc     #0                  // make the syscall