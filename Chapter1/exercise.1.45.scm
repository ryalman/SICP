(load "exercise.1.43.scm")
(load "example.fixed.point.scm")

(define (nth-root x n)
  (define damp-count (floor (/ (log n) (log 2))))
  (define (g y) (/ x (expt y (- n 1))))
  (define (average-damp y) (/ (+ (g y) y) 2))
  (fixed-point (repeated average-damp damp-count) 0.01))


;(nth-root 32 5) and some others does not converge and I do not know why
