(load "exercise.1.22.scm")
(load "example.testing.primality.scm")

(define (next x) (if (= x 2) 3 (+ x 2)))

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
                  ((divides? test-divisor n) test-divisor)
                          (else (find-divisor n (next test-divisor)))))


;Load this file and run test with big numbers
;
;i.e (search-for-primes 1000000000000000 3)
;
;*****Results of my tests*******
;
;before the implementation of next
;
; elapsed-time : 11  number : 1000000000000037
; elapsed-time : 12  number : 1000000000000091
; elapsed-time : 12  number : 1000000000000159

;after the implementation of next
;
;elapsed-time : 7  number : 1000000000000037
;elapsed-time : 7  number : 1000000000000091
;elapsed-time : 8  number : 1000000000000159
