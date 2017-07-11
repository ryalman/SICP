;(11 5)
;   |--(11 4)
;   |     |--(11 3)
;   |     |    |--(11 2)
;   |     |    |     |--(11 1)
;   |     |    |     |--(6 2)
;   |     |    |
;   |     |    |--(1 3)
;   |     |         |--(1 2)
;   |     |         |--(-9 3)
;   |     |
;   |     |-- (-14 4)
;   |
;   |-- (-39 5)
;
; for each denomination type , let it be k, the function is called k times,
; in decreasing order. Then, it substract the denomination from the amount,
; and it causes |amount| times call of the cc at the worst case. So,
; the worst case time camplexity is O (n^2)
;
;
; The space complexity is O (n), because it keeps finite number of variables for
; each call and it is proportional to the height of the tree; Since the worst case
; height of the tree is n than space complexity should be O (n)

