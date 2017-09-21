(define (square-tree tree)
  (map (lambda (sub) (if (pair? sub) (square-tree sub) (* sub sub))) tree))
