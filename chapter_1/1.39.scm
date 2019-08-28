(load "1.37.scm")
    
; define tan
(define (tan-cf x k)
 (define (n i)
  (if (= i 1)
      x
      (- (* x x))))
 (define (d i)
  (- (* 2 i) 1.0))
 (cont-frac-iter n d k))

(tan 10)
(tan-cf 10 20)

