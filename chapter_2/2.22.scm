(define (square-like items)
 (define (iter things answer)
  (if (null? things)
      answer
      (iter (cdr things) 
       (append answer (cons (square (car things)) ())))))
 (iter items ()))

(square-like (list 1 2 3 4 5))
