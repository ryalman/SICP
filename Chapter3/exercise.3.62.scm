;Thanks to https://wizardbook.wordpress.com/2010/12/20/exercise-3-62/

(define (div-series num denom)
  (let ((denom-const (stream-car denom)))
    (if (zero? denom-const)
      (error ("DIV-SERIES -- denominator constant term must be non-zero" ))
      (mul-series num (scale-stream (invert-unit-series
                                      (scale-stream denom (/ 1 denom-const)))
                                    denom-const)))))

(define tan-series (div-series sine-series cosine-series))
