(define (RC r c dt)
  (lambda (i v0)
    (cons-stream (add-streams (scale-stream i R)
                              (integral (scale-stream i (/ 1 C)) v0 dt)))))
