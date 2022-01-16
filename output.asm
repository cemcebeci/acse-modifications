      .data
_a:   .WORD 0
_b:   .WORD 0
      .text
      READ R1 0            /* line 3 */
      STORE R1 _b
      ADDI R2 R0 #0        /* line 5 */
      STORE R2 _a
L2:   LOAD R2 _a
      LOAD R1 _b
      SUB R3 R2 R1
      STORE R1 _b
      STORE R2 _a
      BEQ L3
      LOAD R2 _a
      WRITE R2 0           /* line 6 */
      ADDI R2 R2 #1        /* line 7 */
      STORE R2 _a
      BT L2
L3:   HALT                 /* line 8 */
