(load "exercise.interval.arithmetic.scm")

(define i1 (make-center-percent 50 2))
(define i2 (make-center-percent 30 10))

(define product (mul-interval i1 i2))

(newline)
(newline)
(newline)
(display "i1 tolerance : ")
(display (percent i1))
(newline)
(display "i2 tolerance : ")
(display (percent i2))
(newline)
(display "product tolerance : ")
(display (percent product))
(newline)
(display "sum of tolerances : ")
(display (+ (percent i1) (percent i2)))
(newline)
(display "It seems tolerance of a product is approximately")
(newline)
(display "equal to the sum of the tolerances of factors")
(newline)
(newline)
(newline)

