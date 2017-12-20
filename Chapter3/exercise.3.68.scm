(define (pairs s t)
  (interleave 
    (stream-map (lambda (x) (list (stream-car s) x))
                t)
    (pairs (stream-cdr s) (stream-cdr t))))

;infinite loop because no incremental generation; interleave needs pairs to have the 
;first value but to do that, pairs calls interleave in the next calls which in turn
;requires first value of the next call of pairs method and so on...
