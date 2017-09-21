
(define (generate-segment-painter frame segments)
  (let ((origin (origin-frame frame))
        (edge1 (edge1-frame frame))
        (edge2 (edge2-frame frame)))
    (let ((corner (add-vect edge1 edge2)))
      (segments->painter (segments origin edge1 edge2 corner)))))

(define (outline-frame frame)
  (generate-segment-painter 
    frame 
    (lambda (o s1 s2 c) (list (make-segment o s1)
                              (make-sgment s1 c)
                              (make-segment c s2)
                              (make-segment s2 o)))))

(define (draw-x frame)
  (generate-segment-painter 
    frame
    (lambda (o s1 s2 c) (list (make-segment o c)
                              (make-segment s1 s2)))))

(define (mid-point v1 v2)
  (let ((sum (add-vect v1 v2)))
    (make-vect (/ (xcor-vect sum) 2)
               (/ (ycor-vect sum) 2))))

(define (diamond frame)
  (let ((m1 (mid-point o s1))
        (m2 (mid-point s1 c))
        (m3 (mid-point c s2))
        (m4 (mid-point s2 o)))
    (generate-segment-painter
      frame
      (lambda (o s1 s2 c) (list (make-segment m1 m2)
                                (make-segment m2 m3)
                                (make-segment m3 m4)
                                (make-segment m4 m1))))))

;Not all segments are drawn
(define (wave frame)
  (generate-segment-painter
    frame
    (lambda (o s1 s2 c)
      (let ((p1 (make-vect 0.25 0))
            (p2 (make-vect 0.375 0.5))
            (p3 (make-vect 0.25 0.625))
            (p4 (make-vect 0.125 0.375))
            (p5 (make-vect 0.0 0.725))
            (p6 (make-vect 0.0 0.775))
            (p7 (make-vect 0.125 0.725))
            (p8 (make-vect 0.25 0.650))
            (p9 (make-vect 0.375 0.650))
            (p10 (make-vect 0.32 0.87))
            (p11 (make-vect 0.62 1.0))
            (p12 (make-vect 0.70 0.650)))
        (list (make-segment p1 p2)
              (make-segment p2 p3)
              (make-segment p3 p4)
              (make-segment p4 p5)
              (make-segment p6 p7)
              (make-segment p7 p8)
              (make-segment p8 p9)
              (make-segment p9 p10)
              (make-segment p10 p11))))))















