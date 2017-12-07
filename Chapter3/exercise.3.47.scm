;a)

(define (semaphore n)
  (let ((guard (make-mutex))
        (mutex (make-mutex))
        (size n))
    (define (acquire)
      (if (> size 0)
        (begin 
          (guard 'acquire)
          (if (> size 0)
            (set! size (- size 1))
            (mutex 'acquire))
          (guard 'release))
        (mutex 'acquire)))

    (define (release)
      (begin (guard 'acquire)
             (set! n (+ n 1))
             (if (= size 0)
               (mutex 'release))
             (guard 'release)))

    (lambda (m)
      (cond ((eq? m 'acquire) acquire)
            ((eq? m 'release) release)))))

;b) Instead of (mutex 'acquire), use test-and-set! in an infinite loop.

