;Thanks to https://wizardbook.wordpress.com/2010/12/20/exercise-3-59/

(define (integrate-series series)
  (stream-map / coeffs integers))

(define cosine-series
  (cons-stream 1 (integrate-series sine-series)))

(define site-series
  (cons-stream 0 (scale-stream (integrate-series cosine-series) -1)))
