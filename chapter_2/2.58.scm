(define (sum? s)
 (and (pair? s) (eq? (cadr s) '+)))

(define (addend s) (car s))
(define (augend s) (caddr s))

(define (product? s)
 (and (pair? s) (eq? (cadr s) '*)))

(define (multiplier p) (car p))
(define (multiplicand p) (caddr p))


