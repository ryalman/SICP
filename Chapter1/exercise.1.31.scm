(define (product term a next b)
  (define (iter a result)
    (if (> a b) result
      (iter (next a) (* result (term a)))))
  (iter a 1))


;*****Factorial in terms of produt******

(define (factorial n)
  (define (fact-next a) (+ a 1))
  (define (fact-term a) a)
  (product fact-term 1 fact-next n))


;******Approximation to Pi***********

(define (approx-pi n)

  (define (pi-next a)
    (+ a 1))
  
  (define (pi-term a)
    (if (even? a) (/ (+ a 2) (+ a 1))
      (/ (+ a 1) (+ a 2))))

  (* 4 (product pi-term 1 pi-next n)))


;*******Recursive product**********

(define (recursive-product term a next b)
  (if (> a b) 1
    (* (term a) (recursive-product term (next a) next b))))





