(load "sequence.operations.scm")
(load "exercise.2.38.scm")

(define fold-right accumulate)

(define (reverse-right sequence)
  (fold-right (lambda (x y) (append y  (list x))) (list) sequence))

(define (reverse-left sequence)
  (fold-left (lambda (x y) (cons y x)) nil sequence))
