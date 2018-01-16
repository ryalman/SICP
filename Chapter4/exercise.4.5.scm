(define (extended-cond? exp) (tagged-list? (cdr exp) '=>))

(define (eval-extended-cond exp env)
  (eval (make-if (predidate-extended-cond exp)
                 (consequent-extended-cond exp)
                 #f) env))

(define (predicate-extended-cond exp) (car exp))

(define (consequent-extended-cond exp) (caddr exp))
