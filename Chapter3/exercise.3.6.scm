(define rand
  (let ((x random-init))
    (lambda (m)
      (cond ((eq? m 'generate) (set! x (rand-update x) x))
            ((eq? m 'reset) (lambda (val) (set! x val)))
            (else (error "Unknown message"))))))
