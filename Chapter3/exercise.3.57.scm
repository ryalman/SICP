; 1 2 3 4 5 6 7...
; 0 1 1 2 3 5 8...
;  + + + + + +
;  1 2 3 4 5 6

;for nth fib, we need n-1 addition.
;without memoization (dynamic programming), we would need to repeat all additions
;again and again. Ex.

; for 5th fib number
; 1 2 3 4 5
; 0 1 1 2 3
;  +
;  + +
;  + + +
;  + + + +
; 1 + 2 + 3 + 4 =10 addition.
; in each step we need aprox. twice of (n-1) additions,
; so it has the complexity of O(a^(n))
