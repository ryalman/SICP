(define (=zero? p)
  (cond ((number? p) (= p 0))
        ((pair? p)
         (let ((terms (term-list p)))
           (or (= (length terms) 0)
               (and (=zero? (car terms)) (=zero? (cdr terms))))))
        (else #f)))

(put '=zero 'polynomial =zero?)
     
             
