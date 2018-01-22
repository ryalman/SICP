(define (factorial n)
  (unless (= n 1)
    (* n (factorial (- n 1)))
    1))

; it always tries to evaluate the recursive calls and causes
; error. (stack overflow)
