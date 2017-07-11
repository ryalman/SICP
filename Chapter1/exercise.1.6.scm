(load "example.square.roots.by.newton.scm")

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))


;the "sqrt-iter" function loops infinitely because of applicative order.
;It will try to evaluate both operands to evaluate "good-enough?"
;so the recursive call to "sqrt-iter" will always be evaluated, causing
;an infinite recursion; resulting stack overflow or something like that.



