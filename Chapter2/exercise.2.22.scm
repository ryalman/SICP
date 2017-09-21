(define (square-list items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
            (cons (square (car things)) answer))))
  (iter items nil))

(define (square x) (* x x))


;Reason of reverse order, by substitution over an example:
;(square-list (list 1 2 3 4 5))
; (iter (1 2 3 4 5) nil)
;   (iter (2 3 4 5) (1 nil))
;     (iter (3 4 5) (4 (1 nil)))
;       (iter (4 5) (9 (4 (1 nil))))
;         (iter (5) (16 (9 (4 (1 nil)))))
;           (iter () (25 (16 (9 (4 (1 nil))))))
;           (25 (16 (9 (4 (1 nil)))))


(define (square-list items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
            (cons answer (square (car things))))))
  (iter items nil))

;It reverses the order but the result is not a list any more.
;Scheme represents list as first-rest pairs, such that,
;(list 1 2 3 4 5) is equal to (cons (1 (cons 2 (cons 3 (cons 4 (cons 5 nil))))))
;but the result produced by the second square-list implementation is in
;prefix-last pairs, such that,
;(cons (cons (cons (cons (cons nil.1) 2) 3) 4) 5); 
;Even, the result is not a list but a pair.
