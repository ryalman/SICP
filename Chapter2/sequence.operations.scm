(define (filter predicate seq)
  (if (null? seq) 
    (list)
    (if (predicate (car seq))
      (append (list (car seq)) (filter predicate (cdr seq)))
      (filter predicate (cdr seq)))))

(define (enumerate-interval p q)
  (if (> p q) (list)
    (cons p (enumerate-interval (+ p 1) q))))

(define (accumulate op initial sequence)
  (if (null? sequence) initial
    (op (car sequence) (accumulate op initial (cdr sequence)))))
