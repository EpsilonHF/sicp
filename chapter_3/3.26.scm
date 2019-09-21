; define tree
(define (make-tree key value left-branch right-branch)
 (list key value left-branch right-branch))

(define (take-key tree) (car tree))
(define (take-value tree) (cadr tree))
(define (take-left-branch tree) (caddr tree))
(define (take-right-branch tree) (cadddr tree))
(define (empty-tree? tree) (null? tree))

(define (set-key! new-key tree)
    (set-car! tree new-key))

(define (set-value! new-value tree)
    (set-car! (cdr tree) new-value))

(define (set-left-branch! new-left-branch tree)
    (set-car! (cddr tree) new-left-branch))

(define (set-right-branch! new-right-branch tree)
    (set-car! (cdddr tree) new-right-branch))
