(define (width x) (/ (- (upper-bound x) (lower-bound x)) 2))

;(width (add-interval x y)) = (width x) + (width y) = (width (sub-interval x y))
;
;(define x (make-interval 2 8))
;(define y (make-interval 4 10))
;(define z (make-interval 3 5))
;
;(width (mul-interval x z)) != (width (mul-interval y z))
;
;But
;
;(width x) = (width y) = 6
;
;If the with of the multiplication were a function of only the widths,
;the widths of the multiplication by z of x and y would have been equal to each other
;
