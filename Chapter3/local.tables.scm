(load "representing.tables.scm")
(load "two.dimensional.tables.scm")

(define (make-table)
  (let ((local-table (list '*table*)))
    (define (lookup-local key-1 key-2) (lookup key-1 key-2 local-table))
    (define (insert-local! key-1 key-2 value) (insert! key-1 key-2 value local-table))
    (lambda (m) (cond ((eq? m 'lookup-proc) lookup-local)
                      ((eq? m 'insert-proc!) insert-local!)
                      (else (error "Unknown operation -- TABLE" m))))))