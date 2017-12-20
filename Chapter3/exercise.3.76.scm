(define (smooth stream)
  (let ((s (cons-stream 0 stream)))
    (stream-map (lambda (x y) (/ (+ x y) 2))
                s 
                stream)))
