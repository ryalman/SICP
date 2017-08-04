(define (accumulate combiner null-value term a next b)
  (define (iter result x y)
    (if (> x y)
      result
      (iter (combiner result (term x)) (next x) y)))
  (iter null-value a b))



;*******Sum and product as accumulate***********

(define (next x) (+ x 1))
(define (term x) x)


(define (sum a b)
    (accumulate + 0 term a next b))

(define (product a b)
  (accumulate * 1 term a next b))



;*********Recursive accumulate***********

(define (recursive-accumulate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner null-value (recursive-accumulate combiner (term a) term (next a) next b))))

(define (recursive-sum a b)
  (recursive-accumulate + 0 term a next b))

(define (recursive-product a b)
  (recursive-accumulate * 1 term a next b))
