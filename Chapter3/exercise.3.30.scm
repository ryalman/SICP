(load "simulator.for.digital.circuits.scm")

(define (ripple-carry-adder a b s)
  (define (iter c-in x y sum c-out)
    (cond  ((and (not (null? x)) (not (null? y)) (not (null? sum)))
            (full-adder (car x) (car y) c-in (car sum) c-out)
            (iter c-out (cdr x) (cdr y) (cdr sum) (make-wire)))))
  (iter (make-wire) a b s (make-wire)))


