(rule (big-shot? ?person)
      (and (division ?person ?division)
           (supervisor ?person ?supervisor)
           (not (same ?person ?supervisor))
           (division ?supervisor ?sup-division)
           (not (same ?sup-division ?division))))


