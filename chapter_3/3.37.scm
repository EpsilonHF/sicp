; define c+
(define (c+ a b)
 (let ((sum (make-connector)))
  (adder a b sum)
  sum))

; define c*
(define (c* a b)
 (let ((result (make-connector)))
  (multiplier a b result)
  result))


; define cv
(define (cv num)
 (let ((result (make-connector)))
  (constant num result)
  result))

; define c/
(define (c/ a b)
 (let ((result (make-connector)))
  (multiplier b result a)
  result))
