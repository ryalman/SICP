;It is a conceptual code and it might not run as expected because of
;syntax and null errors. But those errors can easily be fixed by
;putting null? checks.
(define (apply-generic op . args)
  (let ((type-tags (map type-tag args)))
    (let ((proc (get op type-tags)))
      (if proc
        (apply proc (map contents args))
        (let ((coerced (try-coerce-all type-tags args)))
          (if coerced
            (op coerced)
            (error "No method for these types" (list op type-tags))))))))

(define (coerce-all target types args)
  (if (null? types) '()
    (let ((to-target (get-coercion (car types) target)))
      (if to-target
        (let ((rest-coerced (coerce-all target (cdr types) (cdr args))))
          (if rest-coerced 
            (if (eq? target (car types))
              (cons (car args) rest-coerced)
              (append (list (to-target (car args))) rest-coerced))
            #f))
        #f))))

(define (try-coerce-all types args)
  (define (iter targets)
    (if (null? targets) 
      '()
      (let ((target (car targets)))
        (let ((coerced (coerce-all target types args)))
          (if coerced 
            coerced
            (iter (cdr targets))))))
    (iter types)))

