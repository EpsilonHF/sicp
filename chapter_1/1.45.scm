(load "1.40.scm")
(load "1.43.scm")

(define (average-damp f)
 (lambda (x) (average x (f x))))

(define (average a b)
 (/ (+ a b) 2))


; define root
(define (average-n f n)
 ((repeated average-damp n) f))


(define (damped-root n damp-times)
 (lambda (x)
  (fixed-point 
   (average-n
    (lambda (y) (/ x (expt y (- n 1)))) 
    damp-times)
   1.0)))

; test
 ((damped-root 4 3) 81)
