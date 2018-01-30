; In and clause, "middle-manager is a free variable so the first statement of the clause
; will result with unbound variable ?middle-manager. Then the query will call autranked-by 
; again but this thime with an unbound variable. this will result a frame stream that
; also contains the same results of the statement (supervisor ? ?). Thus it will go into 
; an infinite loop.
