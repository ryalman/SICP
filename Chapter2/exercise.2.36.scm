(load "sequence.operations.scm")

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
    (list)                                          ;Not my solution actually,
    (cons (accumulate op init (map car seqs))       ;could not realize map car
          (accumulate-n op init (map cdr seqs)))))  ;could not realize map cdr
