; define iterative cont-frac
(define (cont-frac-iter n d k)
 (define (cal count result)
  (cond ((< count 1) result)
        ((= count k) (cal (- count 1) (/ (n k) (d k))))
        (else (cal (- count 1) (/ (n count) (+ (d count) result))))))
 (cal k 0))


; define recursive cont-frac
(define (cont-frac-rec n d k)
 (define (cf i)
  (if (= i k)
      (/ (n k) (d k))
      (/ (n i) (+ (d i) (cf (+ i 1))))))
 (cf 1))

