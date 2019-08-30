; define new div-interval
(define (div-interval  x y)
 (if (and (< x 0) (> y 0))
     (display "error")
     (mul-interval x
      (make-interval (/ 1.0 (upper-bound y))
                     (/ 1.0 (lower-bound y))))))
