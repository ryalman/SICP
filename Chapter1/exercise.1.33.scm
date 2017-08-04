(define (filtered-accumulate combiner null-value term a next b predicate)
  (define (iter result x y)
    (cond ((> x y) result)
          ((predicate x) (iter (combiner result (term x)) (next x) y))
          (else (iter result (next x) y))))
  (iter null-value a b))


;***********Shared next and term***********

(define (next a) (+ a 1))
(define (term a) a)




;************Sum of primes in range a..b************

(load "example.testing.primality.scm")

(define (prime-sum x y)
  (filtered-accumulate + 0 term x next y prime?))





;**********Product of integers that is relatively prime to n and less than n*********

(load "exercise.1.20.scm")

(define (product-of-relative-primes n)
  (define (relatively-prime? x)
    (= (gcd x n) 1))
  (filtered-accumulate * 1 term 1 next n relatively-prime?))
