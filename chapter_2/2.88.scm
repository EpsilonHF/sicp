; define negative
(define (negative l)
 (if (empty-termlist? l) 
     the-empty-termlist
     (adioin-term
      (make-term (- (order (first-term l))) (coeff (first-term l)))
      (rest-terms l))))


; define minus
(define (minus-terms l1 l2)
 (add-terms l1 (negative l2)))
