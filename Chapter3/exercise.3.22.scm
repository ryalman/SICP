(define (make-queue)
  (let ((front-ptr )
        (rear-ptr '()))

    (define (front) front-ptr)

    (define (rear) rear-ptr)

    (define (set-front-ptr! val) (set! front-ptr val))

    (define (set-rear-ptr! val) (set! rear-ptr val))

    (define (empty-queue?) (null? front-ptr))

    (define (insert-queue val)
      (let ((pair (cons val '())))
        (cond ((empty-queue?)
               (set! front-ptr pair)
               (set! rear-ptr pair))
              (else
                (set-cdr! rear-ptr pair)
                (set-rear-ptr! pair)))))


    (define (delete-queue!)
      (cond ((empty-queue?)
             (error "DELETE! called with an emptyh queue"))
            (else
              (set-front-ptr! (cdr (front-ptr queue))))))

    (define (dispatch m)
      (cond ((eq? m 'front-ptr) front)
            ((eq? m 'rear-ptr) rear)
            ((eq? m 'set-front-ptr!) set-front-ptr!)
            ((eq? m 'set-rear-ptr!) set-rear-ptr!)
            ((eq? m 'empty-queue?) empty-queue?)
            ((eq? m 'insert-queue) instert-queue)
            ((eq? m 'delete-queue) delete-queue)
            (else (error "Unknown operation"))))
    dispatch))
