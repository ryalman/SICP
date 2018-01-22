(define (an-integer-between low high)
  (if (not (< low high)) (amb)
    (amb low (an-integer-between (+ low 1) high))))
