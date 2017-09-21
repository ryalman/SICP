(define (fringe l)
  (if (pair? l)
    (append (fringe (car l)) (fringe (cdr l)))
    (if (null? l) (list) (list l))))
