(load "sequence.operations.scm")
(load "../Chapter1/example.testing.primality.scm")
(load "nested.mappings.scm")
(define (unique-pairs n)
  (accumulate append 
              (list) 
              (map (lambda (i)
                     (map (lambda (j) (list i j))
                          (enumerate-interval 1 (- i 1))))
                   (enumerate-interval 2 n))))


(define (prime-sum-pairs n)
  (filter prime-sum? (unique-pairs n)))
