(load "exercise.2.42.scm")


(define (queens-2 board-size)
  (define (queen-cols k)
    (if (=  k 0)
      (list empty-board)
      (filter
        (lambda (positions) (safe? k positions))
        (flatmap
          (lambda (new-row)
            (map (lambda (rest-of-queens)
                   (adjoin-position new-row k rest-of-queens))
                 (queen-cols (- k 1))))
          (enumerate-interval 1 board-size)))))
  (queen-cols board-size))
;This one is very very slow. For each column n, it regerates all solutions from column 1 to n
;My guess is that its worst case is exponential of board size.
