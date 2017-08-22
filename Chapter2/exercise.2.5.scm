(define (cons a b)
  (* (expt 2 a)
     (expt 3 b)))

(define (count-divides x y i)
  (if (= (remainder x y) 0)
    (count-divides (/ x y) y (+ i 1))
    i))

(define (car z)
  (count-divides z 2 0))

(define (cdr z)
  (count-divides z 3 0))
