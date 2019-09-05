; define augend
(define (augend s)
 (if (pair? (caddr s))
     (cons '+ (caddr s))
     (caddr s)))

; define multiplicand
(define (multiplicand s)
 (if (pair? (caddr s))
     (cons '* (caddr s))
     (caddr s)))
