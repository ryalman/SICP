(define (+ a b)
  (if (= a 0) 
    b
    (inc (+ (dec a) b))))

;******Recursive*******
;(+ 4 5)
;(inc (+ 3 5))
;  (inc (+ 2 5))
;    (inc (+ 1 5))
;      (inc (+ 0 5))
;        0
;      6
;    7
;  8
;9



(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))

;****Iterative(Tail-recursive)****
;(+ 4 5)
; (+ 3 6)
;    (+ 2 7)
;      (+ 1 8)
;        (+ 0 9)
;          9
 


