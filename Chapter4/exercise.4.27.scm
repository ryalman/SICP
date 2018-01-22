(define count 0)

(define (id x)
  (set! count (+ count 1))
  x)

;I did not implement the lazy evaluator.
;Please check
;http://community.schemewiki.org/?sicp-ex-4.27
;for the answer.
