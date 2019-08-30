; define same-parity
(define (same-parity n . l)
 (define (filt f a)
  (cond ((null? a) ())
        ((f (car a)) (cons (car a) (filt f (cdr a))))
        (else (filt f (cdr a)))))
 (if (odd? n) 
     (cons n (filt odd? l))
     (cons n (filt even? l))))


; test
(same-parity 1 2 3 4 5 6 7 8 9)
(same-parity 2 3 4 5 6 7 8 9)
