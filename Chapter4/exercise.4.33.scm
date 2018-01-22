(define (quoted? ex)
  (tagged-list? ex 'quoted))

(define (car val)
  (if (quoted? val) (car val)
    (val (lambda (p q) p))))


