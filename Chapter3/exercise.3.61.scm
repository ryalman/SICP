;Thanks to : https://wizardbook.wordpress.com/2010/12/20/exercise-3-61/
(define (invert-unit-series s)
  (cons-stream
    1
    (scale-strram (mul-series (stream-cdr s)
                              (invert-unit-series s))
                  -1)))
