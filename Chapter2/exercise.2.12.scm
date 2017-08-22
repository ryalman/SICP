(define (make-center-percent c p)
  (let ((lb (- c (* c (/ p 100))))
        (ub (+ c (* c (/ p 100)))))
    (make-interval lb ub)))

(define (percent i)
  (* 100 (/ (- (upper-bound i) (center i)) (center i))))
