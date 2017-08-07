(define (f g)
  (g 2))

; (f f) will result an error
; (f f) 
;   (f 2)
;     (2 2)
;     error: 2 is not a function
