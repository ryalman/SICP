(define (subsets s)
  (if (null? s)
    (list (list))   ; empty list for empty set
    (let ((rest (subsets (cdr s))))
      (append rest (map (lambda (x) (cons (car s) x)) rest)))))


;We can add the first element of the set into the all subsets of the rest of the set.
;As an example;
;
;let S={1,2,3}
;
;we keep the element '1' and the rest is {2,3}
;then  all subsets of {2,3} is {nil, 2, 3, {2,3}}
;now we can also add '1' to those sets
;{nil,2,3, {2,3},   {nil,1}, {2,1}, {3,1}, {2,3,1}}
;
;so the power set is {nil, 2,3,{2,3}, 1, {2,1},{3,1},{2,3,1}}
;which has 8 = 2^3 elements.
;
