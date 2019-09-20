; define circle?
(define (circle? x)
 (define memo '())
 (define (check x)
  (cond ((null? x) #f)
        ((memq x memo) #t)
        (else 
         (begin (set! memo (cons x memo))
                (check (cdr x))))))
 (check x))
