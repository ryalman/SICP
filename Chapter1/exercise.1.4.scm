(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; if b greater than 0 then evaluate (+ a b)
; else evalaute (- a b) which is equal to (+ a (- b))
; the results are the same.
