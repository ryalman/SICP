;default scheme interpreter prints the content of rear and front pointers
;since the front pointer holds a reference to the whole list in the queue
;it shows the last element twice. delete-queue function only updates the 
;front-ptr so that the rear-ptr stills shows the last element in the queue
;


(load "representing.queues.scm")

(define (print-queue queue)
  (define (iter front rear)
    (if (not (null? front))
        ((lambda () 
          (display (car front))
          (display " ")
          (if (not (eq? front rear))
            (iter (cdr front) rear))))))
  (iter (front-ptr queue) (rear-ptr queue)))
        
