(define (make-deque) (cons '() '()))

(define (set-front-ptr-deque! queue ptr) (set-car! queue ptr))

(define (set-rear-ptr-deque! queue ptr) (set-cdr! queue ptr))

(define (front-ptr-deque queue) (car queue))

(define (rear-ptr-deque queue) (cdr queue))

(define (empty-deque? queue) (null? (front-ptr-deque queue)))

(define (front-deque queue) (car (front-ptr-deque queue)))

(define (rear-deque queue) 
  (let ((rear (rear-ptr-deque queue)))
    (if (not (null? rear)) (car rear))))

(define (front-insert-deque! queue val)
  (cond  ((empty-deque? queue) 
          (set-front-ptr-deque! queue (cons val '()))
          queue)
         (else (set-front-ptr-deque! 
                 queue
                 (cons val (front-ptr-deque queue)))
               queue)))

(define (rear-insert-deque! queue val)
  (cond ((or (empty-deque? queue) (null? (rear-ptr-deque queue)))
         (set-rear-ptr-deque! queue (cons val '()))
         queue)
        (else (set-cdr! (rear-ptr-deque queue) (cons val '()))
              queue)))

(define (front-delete-deque! queue)
  (if (empty-deque? queue)
    (error "Can not delete front of empty dequeue")
    (set-front-ptr-deque! queue (cdr (front-ptr-deque queue)))))

(define (rear-delete-deque! queue)
  (if (empty-deque? queue)
    (error "Can not delete rear of empty dequeu")
    (set-cdr! (rear-ptr-deque queue) '())))
