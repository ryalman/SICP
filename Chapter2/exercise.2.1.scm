(define (make-rat n d)
  (let ((g (gcd n d)))
    (if (< (* n d) 0)
      (cons (/ (* -1 (abs n)) g) (/ (abs d) g))
      (cons (/ (abs n) g ) (/ (abs d) g)))))