;10   20    30
;
;exchange 1, 2
;
;20   10    30

;exchange 2,3
;
;20   30    10
;
;exchange 1,3
;
;10   30    20
;   ....
;   ....


;With multi resource serialization, we guarentee that no multiple process
;can access accounts simultanously. 
;They will produce same result as they were squential;
;in exchange program, sum of the balances will be preserved. But single serializer
;model would not preserve that sum because when modifying one resource,
;the other resource might be changed by other procedures. Here the read
;and update times are very crucial. 
;
