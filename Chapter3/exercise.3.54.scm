(define (mult-streams s1 s2)
  (stream-map * s1 s2))

(define factorials (cons-stream 1 (mul-stream factorials integers)))
