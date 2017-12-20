;Thanks to https://wizardbook.wordpress.com/2010/12/23/exercise-3-80/
(define (RLC R L C dt)
  (lambda (il0 vc0)
    (let* ((il (integral 
                 (delay 
                   (add-streams (scale-stream il (- (/ R L)))
                                (scale-stream vc (/ 1 L))))
                 il0 
                 dt))
           (vc (integral 
                 (delay (scale-stream il (/ 1 C))) 
                 vc0 
                 dt)))
      (cons vc il))))

