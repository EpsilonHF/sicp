; define double
(define (double f)
 (lambda (x) (f (f x))))

; test
(define (inc x) (+ x 1))
(((double (double double)) inc) 5)
