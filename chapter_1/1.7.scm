(define (average x y)
 (/ (+ x y) 2))


(define (improve guess x)
 (average guess (/ x guess)))

; new version of good-enough?
(define (good-enough? guess x)
 (< (/ (abs (- (improve guess x) guess)) guess) 0.01))

(define (sqrt-iter guess x)
 (if (good-enough? guess x) 
  guess
  (sqrt-iter (improve guess x) x)))

(define (sqrt x)
 (sqrt-iter 1.0 x))

(sqrt 0.00009)
