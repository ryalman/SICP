;a)
(define (lookup-variable-value var env)
  (define (env-loop env)
    (define (scan vars vals)
      (cond ((null? vars)
             (env-loop (enclosing-environment env)))
            ((eq? var (car vars))
             (cond ((eq? (car vals) '*unassigned))
                   (error "Unassigned value" (car vars))
                   (else (car vals)))
             (else (scan (cdr vars) (cdr vals))))))
    (if (eq? env the-empty-environment)
      (error "Unbound variable" var)
      (let ((frame (first-frame env)))
        (scan (frame-variables frame)
              (frame-values frame)))))
  (env-loop env))

;b)
; Too many coding and I do not have that time.
;c)
; No code no installation 
