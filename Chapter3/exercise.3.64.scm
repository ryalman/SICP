(define (stream-limit stream tolerance)
  (let ((first (stream-car stream))
        (second (car (stream-cdr stream))))
    (if (< (- second first) tolerance)
      second
      (stream-limit (stream-cdr stream) tolerance))))

(define (sqrt x tolerance)
  (stream-limit (sqrt-stream x) tolerance))
