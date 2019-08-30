; define sub-interval
(define (sub-interval x y)
 (let ((p1 (- (upper-bound x) (lower-bound y)))
       (p2 (- (lower-bound x) (upper-bound y))))
  (make-interval p2 p1)))
