; define empty-borad
(define (empty-board) ())


; define adjoin-position
(define (adjoin-position new-row k rest-of-queens)
 (cons new-row rest-of-queens))


; define safe?
(define (safe? k positions)
 (iter-check (car positions)
             (cdr positions)
             1))

(define (iter-check new rest k)
 (if (null? rest)
     #t
     (and (not (= new (car rest)))
          (not (= new (+ i (car rest))))
          (not (= new (- (car rest) i)))
          (iter-check new (cdr rest) (+ i 1)))))
