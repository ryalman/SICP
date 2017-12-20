(define (expand num den radix)
  (cons-stream
    (quotient (* num radix) den)
    (expand (remainder (* num radix) den) den radix)))

;It finds num/den in mod radix

;(expand 3 8 10) gives (3 7 5 0 0 0 ...)
;(expand 1 7 10) gives (1 4 2 8 5 7 1 4 ....)
