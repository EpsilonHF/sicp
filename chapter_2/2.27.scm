(load "2.18.scm")
    
; define deep reverse
(define (deep-reverse tree)
 (cond ((null? tree) ())
       ((not (pair? tree)) tree)
       (else
        (reverse (list (deep-reverse (car tree))
                       (deep-reverse (cadr tree)))))))


; test
(deep-reverse (list (list 1 2) (list 3 4)))
