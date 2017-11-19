;if we share some pairs in car and cdr, the number of pairs
;returned by the function will be incorrect.
;Also creating loops and cycles in the list by using 
;assignment will cause the function not to return forever.
;


(define (count-pairs x)
  (if (not (pair? x))
    0
    (+ (count-pairs (car x))
       (count-pairs (cdr x))
       1)))

;To get 3
;(count-pairs '((1 2)))

;to get 4
;(count-pairs '((1 2) 3))

;to get 7
;(count-pairs '((1 2) (3 4) 5))

;to make it never return
;
;(define never-returns (list 1 2 3))
;(set-cdr! never-returns never-returns)
;(count-pairs never-returns)
