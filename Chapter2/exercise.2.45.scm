
(define (split direction splitter)
  (lambda (painter)
    (let ((splitted (splitter painter painter)))
      (direction painter splitted))))

