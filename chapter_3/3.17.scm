; define count-pairs
(define (count-pairs x)
 (define memo '())
 (define (count x)
  (cond ((not (pair? x)) 0)
        ((memq x memo) (+ (count (car x))
                          (count (cdr x))))
        (else 
         (begin (set! memo (cons x memo))
                (+ (count (car x))
                   (count (cdr x))
                   1)))))
 (count x))



; test
(define end (cons 1 2))
(define pair (cons end end))

(count-pairs pair)

