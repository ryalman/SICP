
;a)
;No need to re-structure the division files because
;they could put  'record entry to the data-directed table
;so that each division can keep of its file structure.

(define (get-record emp file)
  ((get 'record file) emp))


;b)
;again no need to re-structure records. the function 'salary
;could be registered into the table. Son every division
;can develop its own get-salary methods and put them into
;a global table.

(define (get-salary emp file)
  ((get 'salary file) emp))

;c)
(define (find-employee-record emp files)
  (if (null? files) #f
    (let ((record (get-record emp (car files))))
      (if (null? record) 
        (find-empoyee-record emp (cdr files))
        record))))

;d) No need to make changes in existing files, 
;only need for new entries to the prodedure table
