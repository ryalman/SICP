(and (supervisor ?people (Bitdiddle Ben))
     (adress ?people .))

; From schemewiki.org
; 
(and (salary (Bitdiddle Ben) ?number)
     (salary ?person ?amount)
     (lisp-value < ?amount ?number))

(and (supervisor ?person ?boss)
     (job ?boss (computer ?task))
     (not (job ?boss (computer . ?type)))
     (job ?boss ?task))


