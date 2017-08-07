(load "exercise.1.37.scm")

(display "approximate e : ")
(display 
  (+ 2 
     (cont-frac (lambda (i) 1.0) 
                (lambda (i)
                  (let ((total (- (* 2 i) 1)))
                    (if (= (remainder total 3) 0) (+ 1 (/ total 3)) 1))) 100)))

(newline)
