
(define (apply-generic op . args)
  (let ((type-tags (map type-tag args)))
    (let ((proc (get op type-tags)))
      (if proc
        (apply proc (map contents args))
        (if (= (length args) 2)
          (let ((x (car args))
                (y (cadr args)))
            (let ((x-raised (raise x y))
                  (y-raised (raise y x)))
              (cond ((x-raised) (apply-generic op x-raised y))
                    ((y-raised) (apply-generic op x y-raised))
                    (else (error "Incompatible types")))))))))))



(define (raise x y)
  (if (eq? (type-tag x) (type-tag y))
    x
    (let ((raiser (get 'raise (type-tag x))))
      (if raiser (raise (raiser (contents x)) y)
        #f))))

















