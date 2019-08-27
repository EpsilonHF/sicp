; define double
(define (double n)
 (+ n n))


; define halve
(define (halve n)
 (/ n 2))


(define (multiply a b)
 (define (multiply-iter a b count)
  (cond ((= a 1) (+ b count))
   ((even? a) (multiply-iter (halve a) (double b) count))
   (else (multiply-iter (halve (- a 1)) (double b) (+ count b)))))
 (multiply-iter a b 0))

(multiply 5 7)
