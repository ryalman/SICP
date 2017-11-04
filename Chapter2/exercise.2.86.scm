;Only for mag ang representation
(define (make-from-mag-ang mag ang)
  (lambda (op)
    (cond ((eq? op 'real-part) (* mag (cos ang)))
          ((eq? op 'imag-part) (* mag (sin ang)))
          ((eq? op 'magnitude) mag)
          ((eq? op 'angle) ang)
          (else (error "Unknown op -- MAKE-FROM-MAG-ANG" op)))))

(define (cos n)
  ((get 'cosiner (type-tag n)) n)) ;or apply-generic style

(define (sin n)
  ((get 'siner (type-tag n)))) ; or apply-generic style

(define (magnitude

;(put 'siner 'rational (lambda (x) ......
;(put 'cosiner 'rational (lambda (x) .....
;
;You get the idea????
