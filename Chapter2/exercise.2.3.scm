(load "exercise.2.2.scm")


(define (perimeter rectangle)
  (* 2 (+ (length-rect rectangle)
          (width-rect rectangle))))

(define (area rectangle)
  (* (length-rect rectangle)
     (width-rect rectangle)))



(define (length-rect rect)
  (segment-length (make-segment (bottom-left rect)
                                (bottom-right rect))))

(define (width-rect rect)
  (segment-length (make-segment (bottom-left rect)
                                (upper-left rect))))

(define (segment-length segment)
  (sqrt (+ (expt (- (x-point (start-segment segment))
                    (x-point (end-segment segment)))
                 2)
           (expt (- (y-point (start-segment segment))
                    (y-point (end-segment segment)))
                 2))))

;rectangle with two point representation
(define (make-rect-points bl ur)
  (cons bl ur))

(define (bottom-left rect)
  (car rect))

(define (bottom-right rect)
  (make-point (x-point (cdr rect))
              (y-point (car rect))))

(define (upper-left rect)
  (make-point (x-point (car rect))
              (y-point (cdr rect))))


;rectangle with diagonal representation

(define (make-rect-diagonal bl ur)
  (make-segment bl ur))

(define (bottom-left rect)
  (start-segment rect))

(define (bottom-right rect)
  (make-point (x-point (end-segment rect))
              (y-point (start-segment rect))))

(define (upper-left rect)
  (make-point (x-point (start-segment rect))
              (y-point (end-segment rect))))
