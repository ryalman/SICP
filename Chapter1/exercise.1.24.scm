(load "exercise.1.22.scm")

(define (start-prime-test n start-time)
    (if (fast-prime? n 10)
      (if (report-prime (- (runtime) start-time))
        (display n))
      #f));



;****My Test results******
;(search-for-primes 1000000000000000 3)
;
;before (fast-prime? 10) call
; elapsed-time : 7  number : 1000000000000037
; elapsed-time : 7  number : 1000000000000091
; elapsed-time : 8  number : 1000000000000159
;
;after (fast-prime? 10) call, it returns immediately
;
; elapsed-time : 0  number : 1000000000000037
; elapsed-time : 0  number : 1000000000000091
; elapsed-time : 0  number : 1000000000000159

