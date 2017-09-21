(define (make-mobile left right) (list left right))

(define (make-branch len structure) (list len structure))


;a)

(define (left-branch mobile) (car mobile))

(define (right-branch mobile) (car (cdr mobile)))

(define (branch-length branch) (car branch))

(define (branch-structure branch) (car (cdr branch)))



;b)

(define (total-weight mobile) 
  (cond ((null? mobile) 0)
        ((number? mobile) mobile)
        (else (+ (total-weight (branch-structure (left-branch mobile)))
                 (total-weight (branch-structure (right-branch mobile)))))))


;c)

(define (balanced? mobile)
  (if (number? mobile) 
    #t
    (let ((left (left-branch mobile))
          (right (right-branch mobile)))
      (and (= (* (branch-length left) (total-weight (branch-structure left)))
              (* (branch-length right) (total-weight (branch-structure right))))
           (balanced? (branch-structure left))
           (balanced? (branch-structure right))))))


;d)

;(define (make-mobile left right) (cons left right))

;(define (make-branch len structure) (cons len structure))

;here we have to change right-branch and branch-structure selectors

;(define (right-branch mobile) (cdr mobile))

;(define (branch-structure branch) (cdr branch))
