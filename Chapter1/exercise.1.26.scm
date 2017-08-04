;Louis's expmod
;(define (expmod base exp m)
;  (cond ((= exp 0) 1)
;        ((even? exp)
;         (remainder (* (expmod base (/ exp 2) m)
;                       (expmod base (/ exp 2) m))
;                    m))
;        (else
;          (remainder (* base (expmod base (- exp 1) m))
;                     m))))

; trace of expmod 2 8 5
; (expmod 2 8 5)
;   |
;   |- (* (expmod 2 4 5) (expmod 2 4 5))
;           |               |
;           |               |- (* (expmod 2 2 5) (expmod 2 25))
;           |                       |
;           |                       |-(* (expmod 2 1 5) (expmod 2 1 5))
;           |                                 ......
;           |
;           |
;           |
;           |- (* (expmod 2 2 5) (expmod 2 2 5))
;                   |               |
;                   |               |- (* (expmod 2 1 5) (expmod 2 1 5))  
;                   |                         .....
;                   |
;                   |- (* (expmod 2 1 5) (expmod 2 1 5))
;                               ......
;                   

;It generates tree recursion


;original expmod
;(define (expmod base exp n)
;    (cond ((= exp 0) 1)
;          ((even? exp) (remainder (square (expmod base (/ exp 2) n)) n))
;          (else (remainder (* base (expmod base (- exp 1) n)) n))))


;trace of the original expmod
;(expmod 2 8 5)
;  |
;  |- (expmod 2 4 5)
;  |    | 
;       |-(expmod 2 2 5)
;           |- (expmod 2 1 5)
;                 |-(expmod 4 0 5)
;                     ....
;               ...
;           ...
;       ...
;   ...

; It generates linear recursion
