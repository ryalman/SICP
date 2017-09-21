
(define (make-vect x y)
  (cons x y))

(define (xcor-vect v)
  (car v))

(define (ycor-vect v)
  (cdr v))

(define (add-vect v1 v2)
  (make-vect (+ (car v1) (car v2))
             (+ (cdr v1) (cdr v2))))

(define (sub-vect v1 v2)
  (add-vect v1 (make-vect (* -1 (car v2))
                          (* -1 (cdr v2)))))

(define (scale-vect v scalar)
  (make-vect (* scalar (car v))
             (* scaler (cdr v))))
