(rule (son-of ?s ?f))
(rule (grand-son ?s . ?g)
      (and (son-of ?s ?x)
           (son-of ?x ?g)))

(rule (wife-of ?w ?m))
(rule (wife-of ?w ?s ?m)
      (and (son-of ?s ?w)
           (son-of ?s ?m)))

;Not sure if I should use and


