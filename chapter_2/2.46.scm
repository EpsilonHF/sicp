; define vector
(define (make-vect x y)
 (cons x y))

(define xcor-vect car)
(define ycor-vect cdr)

(define (add-vect v1 v2)
 (make-vect (+ (xcor-vect v1)
               (xcor-vect v2))
            (+ (ycor-vect v1)
               (ycor-vect v2))))

(define (sub-vect v1 v2)
 (make-vect (- (xcor-vect v1)
               (xcor-vect v2))
            (- (ycor-vect v1)
               (ycor-vect v2))))

(define (scale-vect n v)
 (make-vect (* (xcor-vect v) n)
            (* (ycor-vect v) n)))

; test
(define v1 (make-vect 1 2))
(define v2 (make-vect 3 4))
(add-vect v1 v2)
(sub-vect v1 v2)
(scale-vect (ycor-vect v1) v2)
