;Global
; make-account
; parameters :balance
;
; E1
;   balance: 50
;   withdraw
;     parameters : amount
;   deposit
;     parameters : amount
;   
;   dispatch 
;     parameters : m
;
;   E2
;     m: 'deposit
;     E3
;       amount : 40
;       sets balance in E1.
;
;
;acc is kept in the global environment
;
;local states are shared because both procedure
;has parent environment E1
;new environments are created by calling dispatch and sharing E1

