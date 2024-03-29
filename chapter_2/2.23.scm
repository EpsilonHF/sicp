; define for-each
(define (for-each f items)
 (if (not (null? items))
  (begin 
   (f (car items))
   (for-each f (cdr items)))))

(for-each (lambda (x)
           (newline)
           (display x))
           (list 1 2 3 4 5))
