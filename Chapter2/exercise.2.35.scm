(load "sequence.operations.scm")

(define (count-leaves t)
  (accumulate + 0 (map (lambda (x) (cond ((pair? x) (count-leaves x))
                                         ((null? x) 0)
                                         (else 1)))
                       t)))
