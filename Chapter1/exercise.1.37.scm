(define (cont-frac n d k)
  (define (recurse i)
    (if (> i k) 0
      (/ (n i) (+ (d i) (recurse (+ i 1))))))
  (recurse 1))


;**********a*************
;(cont-frac (lambda (i) 1) (lambda (i) 1) 10) 
;for approximating 4 decimal place accuracy


;*********b***************
(define (cont-frac-iter n d k)
  (define (iter result i)
    (if (= i 0) result
      (iter (/ (n i) (+ (d i) result)) (- i 1))))
  (iter 0 k))
