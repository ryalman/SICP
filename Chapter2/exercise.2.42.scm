(load "sequence.operations.scm")
(load "nested.mappings.scm")

(define (queens board-size)
  (define (queen-cols k)
    (if (=  k 0)
      (list empty-board)
      (filter
        (lambda (positions) (safe? k positions))
        (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))


(define empty-board (list))

(define (adjoin-position new-row k rest-of-queens)
  (append (list (list new-row k)) rest-of-queens))

;I know it is very bad looking but ... :)
(define (safe? k positions)
  (if (= k 1) #t
    (let ((pos (car positions))
          (rest (cdr positions)))
      (let ((x1 (car pos))
            (y1 (cadr pos)))
        (accumulate (lambda (qp res)
                      (let ((x2 (car qp))
                            (y2 (cadr qp)))
                        (let ((m (abs (/ (- y1 y2) (- x1 x2)))))
                          (and res (not (or (= x1 x2)
                                            (= y1 y2)
                                            (= m 1)))))))
                    #t
                    rest)))))

  

