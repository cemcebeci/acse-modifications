      .data
_a:   .WORD 0
_b:   .WORD 0
      .text
      READ R1 0            /* line 3 */
      READ R2 0            /* line 4 */
      ADD R3 R1 R2         /* line 6 */
      STORE R2 _b
      STORE R1 _a
      ADDI R1 R3 #3
      ADDI R3 R1 #0
      ADDI R1 R3 #5        /* line 8 */
      ADDI R3 R1 #0
      WRITE R3 0           /* line 10 */
      HALT                 /* line 11 */
