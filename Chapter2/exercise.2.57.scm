(define (augend s)
  (composed-term (cddr s) make-sum))


(define (multiplicand s)
  (composed-term (cddr s) make-product))


(define (composed-term term composer)
  (if (null? (cdr term)) (car term)
    (composer (car term) (composed-term (cdr term) composer))))

