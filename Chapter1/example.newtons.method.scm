(load "example.fixed.point.scm")

(define dx 0.0000001)

(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x)) dx)))


(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

