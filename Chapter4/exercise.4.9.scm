; while definition

(define (while? exp) (tagged-list? exp 'while))

(define (while-predicate exp) (cadr exp))

(define (while-body exp) (caddr exp))


(define (eval-while exp env)
  (let ((predicate (while-predicate exp))
        (body (while-body exp)))
    (if (eval predicate env)
      (begin (eval body env)
             (eval-while exp env)))))

