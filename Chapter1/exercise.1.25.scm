(load "example.testing.primality.scm")

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (expmod base exp m)
  (remainder (fast-expt base exp) m))


;I checked the internet for the answer to the question and it says modulo version is better,
;but I do not think so, In modern 64-bit machines, the arithmetics of the big(long) integers
;will not took much time.Also , I am ready to give up a very tiny bit of performance
;for cleaner code.
