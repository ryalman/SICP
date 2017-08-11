(define (iterative-improve improver good-enough?)
  (define (improve result)
    (if (good-enough? result) result
      (improve (improver result))))
  (lambda (guess) (improve guess)))
      


(define (sqrt x)
  ((iterative-improve (lambda (guess) (/ (+ guess (/ x guess)) 2))
                     (lambda (guess) (< (abs (- (* guess guess) x)) 0.00001)))
   0.00001))

(define (fixed-point f guess)
  ((iterative-improve (lambda (x) (f x)) 
                      (lambda (x) (< (abs (- x (f x))) 0.00001))) guess))
