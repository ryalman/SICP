(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
      result
      (iter (op result (car rest)) (cdr rest))))
  (iter initial sequence))

;(fold-right / 1 (list 1 2 3)) ;   (/ 1 (/ 2 (/ 3 1))) = 1.5

;(fold-left / 1 (list 1 2 3))  ;   (/ (/ (/ 1 1) 2) 3) = 1/6

;(fold-right list nill (list 1 2 3)) ; (list 1 (list 2 (list 3 nil))) = (1 (2 (3)))

;(fold-left nil (list 1 2 3))        ; (list (list (list nil 1) 2) 3) = (((1) 2) 3)
