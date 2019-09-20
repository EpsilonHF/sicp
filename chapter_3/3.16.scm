; count-pairs
(define (count-pairs x)
 (if (not (pair? x))
     0
     (+ (count-pairs (car x))
        (count-pairs (cdr x))
        1)))

; define pairs
(define pair1 (list 1 2 3))
(count-pairs pair1)

(define end (cons 1 '()))
(define first (cons 1 end))
(define pair2 (cons first end))
(count-pairs pair2)

(define first1 (cons end end))
(define pair3 (cons first1 first1))
(count-pairs pair3)
