;a)
(meeting ?division (Friday ?time))


;b)
(rule (meeting-time ?person ?day-and-time)
      (or (meeting (whole-company ((day day-and-time) (time day-and-time))))
          (meeting ((division ?person) ?day-and-time))))


;c)

(meeting-time Alyssa (make-date-time Wednesday .))



