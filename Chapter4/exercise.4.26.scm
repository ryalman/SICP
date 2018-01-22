;As a special form, unless can be used like any other procedure but it becomes
;a part of the language, maybe a keyword. (Here I want to indicate that 
;we can treat a special for as a function if it looks like a function)
;
;implementing unless as a procedure might have advante as it could be passed
;as argument or saved into datastructures, with other functions.

(define (unless? ex) (tagged-list? ex 'unless))

(define (unless-predicate ex) (cadr ex))

(define (unless-body ex) (cdddr ex))


