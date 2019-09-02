; define count-leaves
(define (count-leaves t)
 (accumulate + 
             0
             (map (lambda (subtree)
                   (if (pair? subtree)
                       (count-leaves subtree)
                       1)) t)))
