;Thanks frostow on http://community.schemewiki.org/?sicp-ex-3.81
(define (random-generator requests seed) 
  (define s 
    (cons-stream 
      seed 
      (stream-map 
        (lambda (request value) 
          (cond ([eq? request 'generate] (rand-update value)) 
                ([and (pair? request) (eq? (car request) 'reset)] 
                 (cdr request)) 
                (else (error "random-generator invalid request")))) 
        requests 
        s))) 
  s) 
