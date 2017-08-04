; Tpq(a) = qb+aq+ap = (p+q)a + qb=a'
; Tpq(b) = qa+pb    = b' 

; Tpq(a')= (p + q)a' + qb'
;        = (p + q) [ (p+q)a + qb] + q(aq + qb)
;        = (p + q)(p + q)a +(p + q)qb + (q^2)a + (q^2)b
;        = (p^2 + 2pq + q^2)a + pqb + (q^2)b + (q^2)a +(q^2)b
;        = (p^2 + 2pq + 2q^2)a + [pq + 2(q^2)]b

; Tpq(b')=qa' + pb'
;        =q[(p + q)a + qb]+ p(qa + pb)
;        =qpa + (q^2)a + (q^2)b + pqa + (p^2)b
;        =[(2pq + (q^2)]a + [(q^2) + (p^2)]b
;        
; q'=2pq + (q^2)
; p'=(p^2 + 2pq + 2q^2) - q' = p^2+ q^2
; 


(define (fib n)
  (fib-iter 1 0 0 1 n))


(define (square x) (* x x))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a b
                   (+ (square p) (square q))
                   (+ (* 2 p q) (square q))
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p 
                        q
                        (- count 1)))))


