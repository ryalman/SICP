;a. I wont do this since I wrote wave in 2.49 partially.

;b. I am not sure what would the result be.
(define (corner-split painter n)
  (if (= n 0)
    painter
    (beside (below painter (corner-split painter (- n 1)))
            (below (corner-split painter (- n 1)) painter))))


(define (square-limit painter n)
  (let ((combine4 (square-of-for rotate180 identiy
                                 flip-vert flip-horiz)))
    (combine4 (corner-split painter n))))

