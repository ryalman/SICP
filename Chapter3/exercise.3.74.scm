(define (make-zero-crossings input-stream last-value)
  (cons-stream
    (sign-change-detector (stream-car input-stream) last-value)
    (make-zero-crossings (stream-cdr input-stream)
                         (stream-car input-stream))))

;Alyssa 
;(define zero-crossings (make-zero-crossing sense-data 0))

;Eva Lu Ator
(define zero-crossings
  (stream-map sign-change-detector sense-data (cons-stream 0 sense-data)))
