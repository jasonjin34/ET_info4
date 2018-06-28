; imul intruktion übersreibt das dex Register und signalisiert mit dem Overflow flag
; und dem Carry Flag, ob ein Überlauf stattgefunden hat. 
; Carrz Flag: the carry flag is set if the addition of two numbers causes a carry out
; the most significant (leftmost in gerneral) bits added,
; in unsigned arithmetic, watch the carry flag to detect errors
; 
; in signed arthmetic, the carry flag is not relavanted 
; the rules for turing on the overflow flag in binary/interger math are two
;    1: if the sum of two number with sin bit off yields a result number with the
;       with the sign bit on, the "overflow" flag is turned on. 
;    2: if the sum of two numbers with the sign bits on yields a result number with 
;       the sign bit off, the "overflow" flag is turned on. 1000 + 1000 = 0000
; only need to check if the signed bit was changed or not


SECTION .data
    var1 dd 5
    var2 dd 10
    ergebnis dq 0 ;; init ergebnis value 

main: 
    mov eax,