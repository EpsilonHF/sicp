
(define (fast-expt b n)
 (define (expt-iter b n count)
  (cond ((= n 0) count)
   ((even? n) (expt-iter (* b b) (/ n 2) count))
   (else (expt-iter (* b b) (/ (- n 1) 2) (* count b)))))
 (expt-iter b n 1))

(fast-expt 2 10)
(fast-expt 2 0)
