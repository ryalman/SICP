;a)
;It is an ordinary for each loop and the primitive begin
;will evaluate its arguments.

;b)
;(p1 1) 
; '(1 . thunk)
;
;(p2 1)
; 'fullly thunks #(no forced eval here)

;c)
;The whole code will be considered as a list 
;and the first element will be forced and
;last element will be delayed. 

;d) Why not both?
