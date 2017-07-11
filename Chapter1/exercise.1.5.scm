(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

;Infinite recursion when evaluation the value p in applicative order.
;In normal order after paremeter substitution, it prints 0 because 
;(p) is never evaluated due to the rules of (if .. ..) statement.
