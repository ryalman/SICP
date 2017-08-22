(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))


;Using substitution for (define one (add-1 zero))
;
;(add-1 zero)
;(lambda (f) (lambda (x) (f ((zero f) x))))
;(lambda (f) (lambda (x) (f x)))

(define one (lambda (f) (lambda (x) (f x))))

;(add-1 one)
;(lambda (f) (lambda (x) (f ((one f) x))))
;(lambda (f) (lambda (x) (f (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))

;According to wikipedia
;+ operation is
(define (+ m n)
  (lambda (f) (lambda (x) ((m f) ((n f) x)))))
