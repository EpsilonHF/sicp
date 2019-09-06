; define lookup
(define (lookup given-key tree)
 (cond ((null? tree) #f)
       ((= given-key (key (entry tree))) (entry tree))
       ((> given-key (key (entry tree))) (lookup given-key (right-branch tree)))
       (else (lookup given-key (left-branch tree)))))
