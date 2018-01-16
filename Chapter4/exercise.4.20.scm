(define (letrec->rec exps)
  (let ((vars (letrec-vars exps))
        (exps (letrec-exps exps)))
    (let ((lets (make-undefined-assignments vars))
          (assigments (make-assignments vars)))
      (make-let lets (list assignments exps)))))

;.....
;....
;..too many codes...
;
;
