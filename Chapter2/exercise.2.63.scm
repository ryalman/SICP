(define (tree->list-1 tree)
  (if (null? tree)
    '()
    (append (tree->list-1 (left-branch tree))
            (cons (entry tree)
                  (tree->list-1 (right-branch tree))))))

(define (tree->list-2 tree)
  (define (copy-to-list tree result-list)
    (if (null? tree)
      result-list
      (copy-to-list (left-branch tree)
                    (cons (entry tree)
                          (copy-to-list (right-branch tree)
                                        result-list)))))
  (copy-to-list tree '()))


;a)
;The result will be the same

;For the first tree in 2.16 will be 
;(1 3 5 7 9 11)
;
;b)
;tree->list-2 will be  O(n) because it of tail recursion
;tree->list-1 will be O(nlog(n)) because for each
;sub tree it appends lists in size log(l) where l is
;the current level


