(define (count-pairs x)
  (define visited '())
  (define (count pairs)
    (if (pair? pairs)
      (if (not (memq pairs visited))
        ((lambda ()
          (set! visited (cons pairs visited))
          (count (car pairs))
          (count (cdr pairs)))))))
  (count x)
  (length visited))