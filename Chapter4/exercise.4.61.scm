(rule (?x next-to ?y in (?x ?y . ?u)))
(rule (?x next-to ?y in (?v . ?z))
      (?x next-to ?y in ?z))


(?x next-to ?y in (1 (2 3) 4))
; (1 (2 3))
; ((2 3) 4)


(?x next-to 1 in (2 1 3 1))
; (2 1)
; (3 1)


