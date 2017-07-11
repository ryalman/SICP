(define (pascal-value x y)
  (if (or (= y 0) (= x y)) 1
    (+ (pascal-value (- x 1) (- y 1)) (pascal-value (- x 1) y))))

        
