(define (let->combination exp)
  (if (named-let? exp) 
    (make-assignment (binding-let exp) (body-let exp))
    (make-lambda (paremeters-let exp)
               (body-let exp))))

(define (parameters-let exp) (caadr exp))

(define (body-let exp) (cddr exp))

(define (let exp) (tagged-list? exp 'let))

(define (make-assignment var val)
  (cons 'set! (cons var val)))


