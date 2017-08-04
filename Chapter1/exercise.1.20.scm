(define (gcd a b)
  (if (= b 0) 
    a
    (gcd b (remainder a b))))

;
;Assume that remainder = R
;
;-------------Normal Order-----------

; 
;(gcd 206 40)
;
; (if (= 40 0) 206 
;     (gcd 40 (R 206 40)))
; 
; (if (= (R 206 40) 0) 40                                             ;1 eval here
;     (gcd (R 206 40) (R 40 (R 206 40))))
;
; (if (= (R 40 (R (206 40))) 0) (R 206 40)                            ;2 evals here
;     (gcd (R 40 (R 206 40)) (R (R 206 40) (R 40 (R 206 40)))))
;
; (if (= (R (R 206 40) (R 40 (R 206 40))) 0) (R 40 (R 206 40))        ;4 evals here
;     (gcd  (R (R 206 40) (R 40 (R 206 40))) 
;           (R (R 40 (R 206 40)) (R (R 206 40) (R 40 (R 206 40))))))
;
;(if (= (R (R 40 (R 206 40)) (R (R 206 40) (R 40 (R 206 40)))) 0)     ;7 evals here
;     (R (R 206 40) (R 40 (R 206 40)))                                ;4 evals here;
;     (gcd  (R (R 40 (R 206 40)) (R (R 206 40) (R 40 (R 206 40))))
;           (R (R (R 206 40) (R 40 (R 206 40))) 
;           (R (R 40 (R 206 40)) (R (R 206 40) (R 40 (R 206 40)))))))
;
;
;  Total 18 evals.



;------------Applicative Order-----------
;(gcd 206 40)
; 
; (if (= 40 0) 206
;     (gcd 40 (R 206 40)
;       (if (= 6 0) 40
;           (gcd 6 (R 40 6))
;             (if (= 4 0) 6
;                 (gcd 4 (R 6 4))
;                   (if (= 2 0) 4
;                     (gcd 2 (R 4 2))
;                       (if (= 0 0) 2
;                       2
;                     2
;                   .
;                  .
;2
; Total 4 evals of R.
;
