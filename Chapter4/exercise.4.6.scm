(define (let->combination exp)
  (make-lambda (paremeters-let exp)
               (body-let exp)))

(define (parameters-let exp) (caadr exp))

(define (body-let exp) (cddr exp))

(define (let? exp) (tagged-list? exp 'let))
