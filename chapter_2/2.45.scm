; define split
(define (split op1 op2)
 (define (comb painter n)
  (if (= n 0)
      painter
      (let ((smaller (comb painter (- n 1))))
       (op1 painter (op2 smaller smaller)))))
 comb)
