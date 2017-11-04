(define (project n)
  (let ((dropper (get 'projector (type-tag n))))
    (if dropper (dropper (contents n))
      n)))

(load "exercise.2.79.scm")

(define (drop n)
  (let ((dropped (project n)))
    (if (equ? n dropped)
      n
      (if (equ? (raise dropped) n)
        (drop n)
        n))))

(load "exercise.2.84.scm")

(define (apply-generic op . args)
  (let ((type-tags (map type-tag args)))
    (let ((proc (get op type-tags)))
      (if proc
        (apply proc (map contents args))
        (if (= (length args) 2)
          (let ((x (car args))
                (y (cadr args)))
            (let ((x-raised (drop (raise x y)))
                  (y-raised (drop (raise y x))))
              (cond ((x-raised) (apply-generic op x-raised y))
                    ((y-raised) (apply-generic op x y-raised))
                    (else (error "Incompatible types"))))))))))


