
(define (monte-carlo  trials experiment)
  (define (iter trials-remaining trials-passed)
    (cond ((= trials-remaining 0)
           (/ trials-passed trials))
          ((experiment) (iter (- trials-remaining 1) (+ trials-passed 1)))
          (else (iter (- trials-remaining 1) trials-passed))))
  (iter trials 0))


(define (random-in-range low high)
  (let ((range (- high low)))
    (+ low (random range))))

(define (estimate-integral p x1 x2 y1 y2 trials)
  (* (* (abs (- x1 x2)) (abs (- y1 y2))) 
     (monte-carlo trials (lambda () (let ((x (random-in-range x1 x2))
                                          (y (random-in-range y1 y2)))
                                      (p x y))))))

(newline)
(display "PI is close to: ")
(/ (estimate-integral (lambda (x y)(<= (+ (* x x) (* y y)) 25))  
                   -10 10 -10 10 10000) 25)
