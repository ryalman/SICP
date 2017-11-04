(put 'subtract '(polynomial polynomial)
     (lambda (p1 p2) 
       (apply-generic 'add p1 (apply-generic 'negate p2))))

(put 'nagate #f (lambda (x) (- x)))


(define (negate terms)
  (if (= (length terms) 0) 
    '()
    (cons (apply-generic 'negate (car terms) (negate (cdr terms))))))

(put 'negate 'polynomial
     (lambda (p) (negate (term-list p))))

              

