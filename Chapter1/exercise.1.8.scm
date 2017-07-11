(load "exercise.1.7.scm")

(define (cube-root-iter prev guess x)
  (if (good-enough? prev guess)
    guess
    (cube-root-iter guess (improve-guess guess x) x)))

(define (improve-guess guess x)
  (/  (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cube-root x)
  (cube-root-iter 0 1 x))


