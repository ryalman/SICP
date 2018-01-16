(define (eval exp env)
  (cond ((self-evaluationg? exp) exp)
        ((variable? exp) (lookup-variable-value exp env))
        ((has-tag? exp) (eval (get-exp (type-tag exp)) env))))

;I am not writing the whole implementation of data driven approach

;bu the solution as simple as getting the expression from tagged 
;collection.
