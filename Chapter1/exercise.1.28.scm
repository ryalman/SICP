(load "example.testing.primality.scm")
(define (square x) (* x x))
(define (non-trivial-sqrt? x n)
  (if (and (not (= x 1))
           (not (= x (- n 1)))
           (= (remainder (square x) n) 1))
    #t
    #f))


(define (expmod base exp n)
  (cond ((= exp 0) 1)
        ((even? exp)
         (let ((k (expmod base (/ exp 2) n)))
           (if (non-trivial-sqrt? k n) 0 (remainder (square k) n))))
        (else (remainder (* base (expmod base (- exp 1) n)) n))))


(define (miller-robin-test n)
  (miller-robin-iter (- n 1) n))

(define (miller-robin-iter a n)
  (cond ((= a 0) #t)
        ((= 1 (expmod a (- n 1) n)) (miller-robin-iter (- a 1) n))
        (else #f)))

(define (fast-prime? n)
  (miller-robin-test n))



(display "prime? 561 :\t")
(display (prime? 561))
(display "\t passed miller-robin test?:\t");
(display (miller-robin-test 561))
(newline)

(display "prime? 1105 :\t")
(display (prime? 1105))
(display "\t passed miller-robin test?:\t");
(display (miller-robin-test 1105))
(newline)

(display "prime? 1729 :\t")
(display (prime? 1729))
(display "\t passed miller-robin test?:\t");
(display (miller-robin-test 1729))
(newline)

(display "prime? 2465 :\t")
(display (prime? 2465))
(display "\t passed miller-robin test?:\t");
(display (miller-robin-test 2465))
(newline)

(display "prime? 2821 :\t")
(display (prime? 2821))
(display "\t passed miller-robin test?:\t");
(display (miller-robin-test 2821))
(newline)

(display "prime? 6601 :\t")
(display (prime? 6601))
(display "\t passed miller-robin test?:\t");
(display (miller-robin-test 6601))
(newline)

