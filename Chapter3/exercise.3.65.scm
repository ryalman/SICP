;thanks to https://wizardbook.wordpress.com/2010/12/20/exercise-3-65/

(define (ln-summands n)
  (cons-stream (/ 1.0 n)
               (stream-map - (ln-summands (+ n 1)))))

(define ln-stream (partial-sum (ln-summands 1)))

