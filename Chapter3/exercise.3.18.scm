(define (has-cycle? lst)
  (define visitlist '())
  (define (iter x)
    (if (null? x)
      #f
      (let ((el (car x)))
        (if (list-ref visitlist el)
          #t
          ((lambda ()
            (set! visitlist (cons el visitlist))
            (iter (cdr x))))))))
  (iter lst))


