;The epsilon 0.001 is too high to compute square root of small numbers.
;I am not sure what the problem for large numbers but I guess that might
;cause the sqrt-iter enters infinite loop, if improve-guess results 
;the same value or alternating values.

(load "example.square.roots.by.newton.scm")

(define (sqrt-iter prev guess x)
  (if (good-enough? prev guess)
    guess
    (sqrt-iter guess (improve guess x) x)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? prev guess)
  (< (abs (- guess prev)) 0.001))

(define (sqrt x)
  (sqrt-iter 0 1.0 x))

