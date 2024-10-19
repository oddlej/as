/* branch */
.text
.globl main
main:
  mov w0, #3   // w0 ← 3
  b jump       // branch to label jump
  mov w0, #4   // w0 ← 4
  jump:
    ret        // end function
