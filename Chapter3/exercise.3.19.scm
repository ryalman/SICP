(define (tortoise-hare x)
  (define tortoise x)
  (define hare x)
  (define (iter)
    (cond ((null? (cdr hare)) #f)
          ((null? (cddr tortoise)) #f)
          (else (begin
                  (set! hare (cdr hare))
                  (set! tortoise (cddr tortoise))
                  (if (eq? (car tortoise) (car hare))
                    #t
                    (iter))))))
  (iter))
