; define average
(define (averager a b c)
 (let ((sum (make-connector))
       (two (make-connector)))
  (constant 2 two)
  (adder a b sum)
  (multiplier two c sum)
  'ok))
