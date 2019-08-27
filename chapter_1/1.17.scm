; define double
(define (double n)
 (+ n n))


; define halve
(define (halve n)
 (/ n 2))


; multiply
(define (multiply a b)
 (cond ((= a 1) b)
  ((even? a) (multiply (halve a) (double b)))
  (else (+ b (multiply (halve (- a 1)) (double b))))))


(multiply 5 7)

