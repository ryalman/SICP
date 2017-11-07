
(define first-param #f)
(define (f x)
  (if (number? first-param)
    (begin (set! first-param #f) 0)
    (begin (set! first-param x) x)))


