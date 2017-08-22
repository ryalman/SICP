(define (div-interval x y)
  (let ((y-upper (upper-bound y))
        (y-lower (lower-bound y)))
    (if (or (= y-upper 0) (= y-lower 0))
      (error "division by zero")
      (mul-interval x (make-interval (/ 1.0 y-upper)
                                     (/ 1.0 y-lower))))))

