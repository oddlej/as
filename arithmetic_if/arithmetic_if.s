.text
.globl main

main:
  // code that evaluates the expression and sets its value in w0
  // mov w0, #value // Uncomment and set the value for w0
  cmp w0, #0 // compares w0 with 0 and updates the flags
  b.lt label1 // if w0 < 0 then branch to label1
  b.eq label2 // if w0 == 0 then branch to label2
  // code for label3
  b end_of_arithmetic_if // branch to end_of_arithmetic_if

label1:
  // code for label1
  b end_of_arithmetic_if // branch to end_of_arithmetic_if

label2:
  // code for label2

end_of_arithmetic_if:
  // print hello
  ldr x0, =hello // load address of hello into x0
  bl printf // call printf

.data
hello: .asciz "hello\n"