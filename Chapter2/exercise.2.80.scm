;complex package
(put '=zero? '(complex)
     (lambda (x)
     (and (zero? (real-part x))
          (zero? (imag-part x)))))

;rational package 
(put '=zero? '(rational)
     (lambda (x) (and (zero? (numer x)) (zero? (denom x)))))

;for ordinary package

(put '=zero? '()
     zero?)
 
