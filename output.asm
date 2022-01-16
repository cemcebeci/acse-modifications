      .data
_a:   .WORD 0
_b:   .WORD 0
      .text
      READ R1 0            /* line 3 */
      STORE R1 _b
      ADDI R1 R0 #0        /* line 5 */
      STORE R1 _a
L2:   LOAD R1 _a
      ADDI R2 R1 #4
      SUB R3 R1 R2
      STORE R1 _a
      BEQ L3
      LOAD R1 _a
      WRITE R1 0           /* line 6 */
      ADDI R1 R1 #1        /* line 7 */
      STORE R1 _a
      BT L2
L3:   HALT                 /* line 8 */
