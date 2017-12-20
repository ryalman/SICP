(define (partial-sums stream)
  (cons-stream (stream-car stream) 
               (add-streams (partial-sums stream)
                            (stream-cdr stream))))
