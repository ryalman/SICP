(define (make-accumulator initial)
  (lambda (amount)
    (set! initial (+ initial amount))
    initial))
