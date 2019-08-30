(load "2.2.scm")

; define rectangle
(define (rectangle p1 p2)
 (cons p1 p2))

(define (get-length r)
 (abs (- 
       (x-point (car r)) 
       (x-point (cdr r)))))

(define (get-height r)
 (abs (- 
       (y-point (car r))
       (y-point (cdr r)))))

(define (perimeter r)
 (* 2 (+
       (get-length r)
       (get-height r))))

(define (area r)
 (* (get-length r)
    (get-height r)))

; test
(define point1 (make-point 1 3))
(define point2 (make-point 6 9))
(define re1 (rectangle point1 point2))
(perimeter re1)
(area re1)
