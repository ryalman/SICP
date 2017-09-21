(load "exercise.2.40.scm")

(define (ordered-triples-with-sum sum n)
  (filter (lambda (p) (= sum (accumulate + 0 p)))
          (accumulate append (list) 
                      (map (lambda (i) 
                             (map (lambda (j) (append (list i) j))
                                  (unique-pairs (- i 1))))
                           (enumerate-interval 3 n)))))
