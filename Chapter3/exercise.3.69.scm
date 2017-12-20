;Thanks to https://wizardbook.wordpress.com/2010/12/22/exercise-3-69/
(define (triples s t u)
  (cons-stream (list (stream-car s) (stream-car t) (stream-car u))
               (interleave (stream-map (lambda (x) (list (stream-car s) x))
                                       (stream-cdr (pairs t u)))
                           (triples (stream-cdr s) (stream-cdr t) (stream-cdr u)))))

(stream-filter (lambda (t) (= (+ (square (car t))
                                 (square (cadr t)))
                              (square (caddr t))))
               (triples integers integers integers))
