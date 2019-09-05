; define equal?
(define (equal? l1 l2)
 (cond ((and (null? l1) (null? l2)) #t)
       ((or (null? l1) (null? l2)) #f)
       ((and (symbol? l1) (symbol? l2)) (eq? l1 l2))
       ((or (symbol? l1) (symbol? l2)) #f)
       ((and (pair? l1) (pair? l2)) (and (equal? (car l1) (car l2))
                                         (equal? (cdr l1) (cdr l2))))
       (else #f)))
