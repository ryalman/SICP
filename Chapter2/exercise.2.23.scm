(define (for-each f items)
  (if (null? items) (newline) 
    ((lambda (x) (f x) (for-each f (cdr items))) (car items))))
