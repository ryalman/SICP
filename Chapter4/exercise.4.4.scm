(define (eval-and exp env)
  (if (null? exp) #t
    (let ((res (eval (car exp) env)))
      (if res (eval-and (cdr exp) env)
        #f))))

(define (eval-or exp env)
  (if (null? exp) #f
    (let ((res (eval (car exp) env)))
      (if res #t 
        (eval-or (cdr exp) env)))))

