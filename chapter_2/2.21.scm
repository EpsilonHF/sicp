(define (square-like items)
 (if (null? items)
     ()
     (cons (square (car items)) (square-like (cdr items)))))

(square-like (list 1 2 3 4 5))


(define (square-like items)
 (map square items))

(square-like (list 1 2 3 4 5))
