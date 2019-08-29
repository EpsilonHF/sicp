; define compose
(define (compose f g)
 (lambda (x) (f (g x))))

; test
(define (inc x) (+ x 1))
((compose square inc) 6)
