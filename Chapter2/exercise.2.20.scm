(define (same-parity n . l)
  (define (iter result rem k)
    (if (null? k) 
      result
      (if (= rem (remainder (car k) 2))
        (iter (append result (list (car k))) rem (cdr k))
        (iter result rem (cdr k)))))
  (iter (list n) (remainder n 2) l))
