;I think expansion would be enough. first we expand to let then
;we expand lets to lambdas
;It should be sufficient


(define (let*? exp) (tagged-list? exp 'let*))

(define (let*->nested-lets exp)
  (let ((params (paremeters-let exp))
        (body (body-let exp)))
    (nested-lets params body)))

(define (nested-lets params body)
  (let ((first (car params)))
    (if (null? first) body
      (make-let first (nested-lets (cdr params) body)))))
    

(define (make-let params body)
  (cons 'let (cons (list params) body)))
