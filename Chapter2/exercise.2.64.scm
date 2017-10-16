(define (list->tree elements)
  (car (partial-tree elements (length elements))))
(define (partial-tree elts n)
  (if (= n 0)
    (cons '() elts)
    (let ((left-size (quotient (- n 1) 2)))
      (let ((left-result (partial-tree elts left-size)))
        (let ((left-tree (car left-result))
              (non-left-elts (cdr left-result))
              (right-size (- n (+ left-size 1))))
          (let ((this-entry (car non-left-elts))
                (right-result (partial-tree (cdr non-left-elts)
                                            right-size)))
            (let ((right-tree (car right-result))
                  (remaining-elts (cdr right-result)))
              (cons (make-tree this-entry left-tree right-tree)
                    remaining-elts))))))))

;a) It devides the list in to two aproximately equal sized sublists,
;then it does this operation recursiveley for the sub lists.
;doing this and collecting back will produce a binary tree
;because the list is ordered.
;(list->tree '(1 3 5 7 9 11)) will result (5 (1 (3)) (9 (7) (11)) )


;b) It creates log(n) subtrees but it also process all the elements
;So that  O(log(n) + n) will be O(n)
