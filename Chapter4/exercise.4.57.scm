(rule (can-do-same-job ?person1 ?person2)
      (or (same (job ?person1 ?job) (job ?person2 ?job))
          (and (can-do-same-job ?someone ?person1)
               (can-do-same-job ?someone ?person2)))
      (not (same ?person1 ?person2)))


