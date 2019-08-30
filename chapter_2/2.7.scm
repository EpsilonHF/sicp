; define interval
(define (make-interval a b)
 (cons a b))

(define upper-bound cdr)
(define lower-bound car)

; test
(define interval (make-interval 1 3))
(upper-bound interval)
(lower-bound interval)
