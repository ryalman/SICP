(define (analyze-special-let exps)
  (analyze (let->combination exps)))

;in analyze cases put ((let? exps) (analyze-special-let exps))
