; recursive process
(define (f-rec n)
 (if (< n 3)
  n
  (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))))

; iterative process
(define (f-iter n)
 (define (f-count pre1 pre2 pre3 count n)
  (cond ((< n 3) n)
   ((= count n) pre1)
   (else (f-count (+ pre1 (* 2 pre2) (* 3 pre3)) pre1 pre2 (+ 1 count) n))))
 (f-count 2 1 0 2 n))

; test
(f-rec 10)
(f-iter 10)
   
