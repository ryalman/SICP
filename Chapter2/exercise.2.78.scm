(define (type-tag datum)
  (if (number? datum) datum
    (if (pair? datum)
      (car datum)
      (error "Bad tagged datum -- TYPE-TAG" datum))))

(define (contents datum)
  (if (number? datum) datum
    (if (pair? datum)
      (cdr datum)
      (error "Bad tagged datum -- CONTENTS" datum))))

(define (attach-tag type-tag contents)
  (if (number? datum) contents
    (cons type-tag contents)))
