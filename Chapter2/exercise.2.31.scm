(define (tree-map f tree)
  (map (lambda (sub) (if (pair? sub) (tree-map f sub) (f sub))) tree))
