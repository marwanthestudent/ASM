.global LSL_32
.global LSR_32
.global ASL_32
.global ASR_32
.global AND_32
.global OR_3
.global is_Even
.text

;This shifts (unit32_t x, unit32_t p), x << p
LSL_32:
    MOV R0, R0 LSL R1
    bx lr
;same thing but to the right
LSR_32:
    MOV R0, R0 LSR R1
    bx lr
;same thing as LSL
ASL_32:
    MOV R0, R0 LSL R1
    bx lr
;arithmetic to the right
ASR_32:
    MOV R0, R0 ASR R1
    bx lr
;logical AND{S}
AND_32:
    AND R0, R0, R1
    bx lr
;logical ORR{S}
OR_32:
    ORR R0, R0, R1

    bx lr
;returns 1 if the number is even 0 if odd.
is_Even:
    ;MOVS R0, R0 LSR #1 //this way we send the lsb to the carry
    ;if C is set return 1 otherwise return 0
    TST R0, #1
    MOVEQ R0, #0
    MOVNE R0, #1

    bx lr
