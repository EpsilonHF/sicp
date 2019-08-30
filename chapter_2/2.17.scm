; define last-pair
(define (last-pair l)
 (if (null? (cdr l))
     (car l)
     (last-pair (cdr l))))

; test
(last-pair (list 1 2 3 4 5))
