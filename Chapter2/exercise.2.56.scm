
(define (exponentiation? exp)
  (and (pair? exp) (eq? (car exp) '**)))

(define (base exp) (cadr exp))

(define (exponent exp) (caddr exp))

(define (make-exponentiation base ex)
  (cond ((=number? ex 0) 1)
        ((=number? ex 1) base)
        ((and (number? base) (number? ex))
         (expt base ex))
        (else (list '** base ex))))
