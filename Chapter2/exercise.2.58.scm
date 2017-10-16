;a)
(define (sum? expr)
  (eq? (cadr expr) '+))

(define (addend expr)
  (car expr))

(define (augend expr)
  (caddr expr))

(define (make-sum a b)
  (cond ((=number? a 0) b)
        ((=number? b 0) a)
        ((and (number? a) (number? b)) (+ a b))
        (else (list a '+ b))))

(define (make-product a b)
  (cond ((or (=number? a 0) (=number? b 0)) 0)
        ((=number? a 1) b)
        ((=number? b 1) a)
        ((and (number? a) (number? b) (* a b)))
        (else (list a '* b))))



(define (product? expr)
  (eq? (cadr expr) '*))

(define (multiplier expr)
  (car expr))

(define (multiplicand expr)
  (caddr expr))



;b) Thanks to billthelizard.com
(define (extract expr)
  (if (null? (cdr expr)) (car expr) expr))

(define (augend expr) (extract (cddr expr)))
(define (multiplicand  expr) (extract (cddr expr)))
