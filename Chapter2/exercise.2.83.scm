(put 'raise 'integer
     (lambda (i) (make-rational i 1)))

(put 'raise 'rational
     (lambda (r) (/ (numer r) (denom r))))

(put 'raise 'real
     (lambda (r) (make-from-real-imag r 0)))

