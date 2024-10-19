/* ch26.s */
.data

one_var : .word 42
another_var : .word 66

.globl result_var             /* mark result_var as global */
result_var : .word 0

.text

.globl main
main:
    ldr x0, addr_one_var      /* r0 ← &one_var */
//    ldr x0, [x0]              /* r0 ← *r0 */
    ldr x1, addr_another_var  /* r1 ← &another_var */
//    ldr x1, [x1]              /* r1 ← *r1 */
    add x0, x0, x1            /* r0 ← r0 + r1 */
    ldr x1, addr_result       /* r1 ← &result */
    mov x0, x1              /* *r1 ← r0 */
    bl addr_result             /* call to inc_result */
    mov x0, #0                /* r0 ← 0 */
//    ret                     /* return */
   

addr_one_var  : .word one_var
addr_another_var  : .word another_var
addr_result  : .word result_var
