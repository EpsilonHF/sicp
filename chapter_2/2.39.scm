; define reverse
(define (reverse seqence)
 (fold-right (lambda (x y) 
                     (append y (list x)))
             ()
             sequence))

(define (reverse sequence)
 (fold-left (lambda (x y)
                    (cons y x))
            ()
            sequence))
