(load "example.fixed.point.scm")

(fixed-point (lambda (x) (+ 1 (/ 1 x))) 0.01)
