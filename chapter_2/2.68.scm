; define encode-symbol;
(define (encode-symbol symbol tree)
 (cond ((leaf? tree) ())
       ((symbol-in-tree? symbol (left-branch tree))
        (cons 0 (encode-symbol (left-branch tree))))
       ((symbol-in-tree? symbol (right-branch tree))
        (cons 1 (encode-symbol (right-branch tree))))
       (else 
        (error "invalid symbol" symbol))))


(define (symbol-in-tree? given-symbol tree)
 (not (false? (find (lambda (x) (eq? x given-symbol))
                    (symobl tree)))))
