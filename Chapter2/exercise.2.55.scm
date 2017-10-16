(car ''abracadabra) ; is equalto 
(car (quote (quote abracadabra)))
;first call of the quote macro quotes all the statement (quote abracadabra)
;so the second quote wont call, as it is considered as symbol now.
;so the result is 'quote'

