;a) The deriv operation is made generic for each operator type.
;   We can not create a deriv entry into the table because 
;   number? must be true for all numbers. All predicates 
;   returns one of two values no matter how much their domain bigger.

;   Hint : Try to put 'deriv entry into the table for type number.
;   If we do that, we will evantually use an other predicate to
;   check if the expression is number or not.
;   
;   Same arguments for same-variable?

(load "example.symbolic.differentiation.scm")
;b)

(define (deriv-sum expr var)
  (make-sum (deriv (addend expr) var)
            (deriv (augend expr) var)))

(define (deriv-product expr var)
  (make-sum (make-product (multiplier expr)
                          (deriv (multiplicand expr) var))
            (make-product (deriv (multiplier expr) var)
                          (multiplicand expr))))


(put 'deriv '+ deriv-sum)
(put 'deriv '* deriv-product)

;c)

(define (deriv-exponent expr var)
  (make-product (exponent expr)
                (make-product
                  (make-exponentiation (base expr)
                                       (make-sum (exponent expr) -1))
                  (deriv (base expr) var))))


(put 'deriv '** deriv-exponent)

;d)
;Change (put 'deriv 'o f) to (put 'o 'deriv f)
