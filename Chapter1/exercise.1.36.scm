(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (display "guess :")
    (display guess)
    (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next) next (try next))))

  (try first-guess))

(define (average x y) (/ (+ x y) 2))


;****************normal solution*****************
(display "Normal Solution")
(newline)
(fixed-point (lambda (x) (/ (log 1000) (log x))) 2)
(newline)
(newline)
;**************with average damping***************
(display "With average damping")
(newline)
(fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 2)
(newline)
