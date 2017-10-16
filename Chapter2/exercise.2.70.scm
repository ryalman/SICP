(define htree (generate-huffman-tree '( (BOOM 1) 
                                       (WAH 1) 
                                       (A 2) 
                                       (GET 2) 
                                       (JOB 2) 
                                       (SHA 3) 
                                       (YIP 9) 
                                       (NA 16))))


(define encoded-song (encode '(
                               Get a Job
                               Sha na na na na na na na na
                               Get a job
                               Sha na na na na na na na na
                               Wah yip yip yip yip yip yip yip yip yip
                               Sha boom
                               ) htree))

(newline)
(display "length : ")
(display (length encoded-song))
(newline)

(display "song bits : ")
(display encoded-song)
(newline)

(display "total bits with 3-bit  fixed length : ")
(display (* 36  3))
(newline)
