(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))


;With substitution model
;(car (cons x y))
;(car ((lambda (m) (m x y))))
;((z (lambda (p q) p)) ((lambda (m) (m x y))))
;(((lambda (m) (m x y)) (lambda (p q) p)))
;((lambda (x y) x))
;x


(define (cdr z)
  (z (lambda (p q) q)))

