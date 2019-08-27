(define (pascal row col)
 (cond ((< row col) (- 1))
  ((= col 1) 1)
  ((= col row) 1)
  (else (+ (pascal (- row 1) col)
           (pascal (- row 1) (- col 1))))))


(pascal 5 3)
