      .data
_a:   .WORD 0
_b:   .WORD 0
      .text
      ADDI R1 R0 #31       /* line 2 */
      STORE R1 _a
      BT L2                /* line 4 */
L4:   LOAD R1 _a
      SUB R0 R2 R1
      STORE R1 _a
      BEQ L3
L2:   LOAD R1 _a
      ADD R2 R0 R1
      DIVI R3 R1 #3        /* line 5 */
      ADD R1 R0 R3
      WRITE R1 0           /* line 6 */
      STORE R1 _a
      BT L4                /* line 7 */
L3:   BT L5                /* line 9 */
L7:   LOAD R1 _a
      SUB R0 R2 R1
      STORE R1 _a
      BEQ L6
L5:   LOAD R1 _a
      ADD R2 R0 R1
      WRITE R1 0           /* line 10 */
      STORE R1 _a
      BT L7                /* line 11 */
L6:   HALT
