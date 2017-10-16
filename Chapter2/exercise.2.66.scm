(define (key num) num)

(define (lookup id records)
  (if (null? records) 
    #f
    (let ((k (key (entry records))))
      (cond ((equal? id k) (entry records))
            ((< id k) (lookup id (left-branch records)))
            (else (lookup id (right-branch records)))))))

