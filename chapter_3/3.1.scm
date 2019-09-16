; define accumulator
(define (make-accumulator sum)
 (lambda (amount)
  (if (number? amount)
      (begin (set! sum (+ sum amount))
             sum)
      (error "error"))))


; test
(define A (make-accumulator 5))
(A 10)
(A 10)
