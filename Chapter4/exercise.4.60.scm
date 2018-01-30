;Because it is a cross join
;Not sure it is possible to query unique results but I will try below.

(rule (unique-lives-near ?person-1 ?person-2)
      (and (lives-near ?person-1 ?x2)
           (lives-near ?x1 ?person-2)
           (lisp-value (lambda () 
                         (and (not (eq ?x1 ?x2))
                              (not (eq ?person-1 ?x1))
                              (not (eq ?person-2 ?x2)))))))

;Note that I am not sure it is correct
