(controller 
  (assing n 1)
  (assing product 1)
  (assing counter 1)

  (label 'continue)
  (assign ok (gt counter n))
  (test ok
        (branch 'finish)
        (assign product (op *) product counter)
        (branch 'continue))
  (label 'finish))

