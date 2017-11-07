(load "exercise.3.3.scm")
(define (make-joint account acc-password password)
  (if (number? ((account acc-password 'deposit) 0))
    (lambda (pwd m)
      (if (eq? pwd password) (account acc-password m) (account pwd m)))))

