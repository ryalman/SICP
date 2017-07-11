(define (f-recursive n)
  (if (< n 3) n
    (+ (f-recursive (- n 1))
        (* 2 (f-recursive (- n 2)))
        (* 3 (f-recursive (- n 3))))))

(define (f-iterative n)
  (define (iter x y z index)
    (if (or (< index 3) (> index n)) x
      (iter (+ x (* 2 y) (* 3 z)) x y (+ index 1))))
  (if (< n 3) n (iter 2 1 0 3)))
