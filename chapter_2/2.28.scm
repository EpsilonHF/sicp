; define left-to-right order
(define (fringe tree)
 (cond ((null? tree) ())
       ((not (pair? tree)) (cons tree ()))
       (else (append (fringe (car tree)) (fringe (cadr tree))))))


; test
(define x (list (list 1 2) (list 3 4)))
(fringe x)
(fringe (list x x))
