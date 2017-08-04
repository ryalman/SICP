(define (cube x)  (* x x x))
(define (p x)  (- (* 3 x)  (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
    angle
    (p (sine (/ angle 3.0)))))



;  a. 5 calls, found using (trace p)
;  b. Ignoring the production and subtraction operations, each iteration reduces
;     input by the factor of 1/3. so that for an input a, the time complexity
;     would be O (log(a)). For each iteration, it keeps results of p and sine
;     functions, that is finite, so that my guess is that its space complexity
;     is also O (log(a)) since the iteration count is log3 (a).
