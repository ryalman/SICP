;if multiple operations first try to acquire the same account first, only one of them
;will succeed it so that no operation would wait for each other to release a resource.

(define (serialized-exchange account1 account2)
  (let ((serializer1 (account1 serializer))
        (serializer2 (account2 serializer)))
    (if (< (account1 'number) (account2 'number))
      (begin 
        ((serializer1 (serializer2 exchange))
         account1
         account2))
      (begin 
        ((serializer2 (serializer1 exchange))
         account1
         account2)))))



; Implement make-acount such a way that it also responds 'number returning the number
; that was assigned.
