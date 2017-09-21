(define (deep-reverse l)
  (if (null? l) (list)
    (append (deep-reverse (cdr l)) 
            (list (if (pair? (car l)) (deep-reverse (car l)) (car l))))))
