; define clever circle?

(define (circle? x)
 (define (iter x y)
  (let ((fast (walk 2 fast))
        (slow (walk 1 slow)))
   (cond ((or (null? fast) (null? slow)) #f)
         ((eq? fast slow) #t)
         (else (iter fast slow)))))
 (iter x x))


(define (walk step x)
 (cond ((null? x) '())
       ((= step 0) x)
       (else (- step 1)
             (cdr x))))
