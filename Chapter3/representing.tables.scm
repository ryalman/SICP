(define (lookup key table)
  (let ((record (assoc key (cdr table))))
    (if record (cdr record) false)))

(define (insert! key value table)
  (let ((record (assoc key (cdr table))))
    (if record (set-cdr! record value)
      (set-cdr! table (cons (cons key value) (cdr table)))))
  'ok)

(define (make-table) (list '*table*))

