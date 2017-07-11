(define (sum-of-larger-squares x y z) 
  (+ (* (max x y) (max x y)) 
     (* (max y z) (max y z))))
