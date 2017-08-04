(load "example.testing.primality.scm")

(define (timed-prime-test n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
    (if (report-prime (- (runtime) start-time))
      (display n))
    #f)); added to allow counting

(define (report-prime elapsed-time)
  (newline)
  (display " elapsed-time : ")
  (display elapsed-time)
  (display "  ")
  (display "number : ")
  #t)


(define (search-for-primes x count)
  (if (and (even? x) (not (= x 2)))
    (search-for-primes (+ x 1) count)
    (if (> count 0)
      (if (not (timed-prime-test x))
        (search-for-primes (+ x 2) count)
        (search-for-primes (+ x 2) (- count 1)))
      (newline))))


;Use very big numbers to get a non zero elapsed time in modern machines
