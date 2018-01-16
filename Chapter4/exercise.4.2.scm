;a)
;If Luis's suggestion applied, definitions would be confused with
;applications. So puttiion application? before assignment will
;break the lexical structure of the evaluator.

;b)

(define (application? exp)
  (tagged-list? exp 'call))

(define (operator exp)
  (cadr exp))

(define (operand exp)
  (cddr exp))
