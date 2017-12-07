;process 1                process 2
;-------------------------------------
;call acquire             call acquire
;call test-and-set        call test-and-set
;(car cell)               (car cell)
;(if (car cell))          (if (car cell))
;true                       true
;
; here two process can access and acquire the lock
; if there is no atomicity
