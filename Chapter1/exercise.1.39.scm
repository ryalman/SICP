(define (tan-cf x k)
  (define (iter i)
    (if (> i k) 0
      (let ((num (if (= i 1) x (* x x)))
            (di (- (* 2 i) 1)))
        (/ num (- di (iter (+ i 1)))))))
  (iter 1))

