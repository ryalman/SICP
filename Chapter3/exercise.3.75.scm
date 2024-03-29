(define (make-zero-crossings input-stream last-value avg)
  (let ((avpt (/ (+ (stream-car input-stream) last-value) 2)))
    (cons-stream (sign-change-detector avpt avg)
                 (make-zero-crossings (stream-cdr input-stream)
                                      avpt))))
