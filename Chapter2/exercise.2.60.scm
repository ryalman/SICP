;No need to re-define element-of-set? because it will have the same
;(even worse) time complexity

;Adjoin-set will be Θ(1) in time complexity

(define (adjoin-set x set)
  (cons x set))

;Union-set will have Θ(n) where n is the max(|set1|,|set2|)

(define (union-set set1 set2)
  (append set1 set2))

;Intersection will have the same or even worse time complexity
;and the implementation will be the same.
