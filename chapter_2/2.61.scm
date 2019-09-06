; define adjoin-set
(define (adjoin-set x set)
 (cond ((null? set) (cons x ()))
       ((= x (car set)) set)
       ((< x (car set)) (cons x set))
       (else (cons (car set) (adjoin-set x (cdr set))))))
