(define (improve guess x)
 (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))


(define (good-enough? guess x)
 (< (/ (abs (- guess (improve guess x))) guess) 0.001))


(define (cube-iter guess x)
 (if (good-enough? guess x)
  guess
  (cube-iter (improve guess x) x)))


(define (cube x)
 (cube-iter 1 x))


(cube 0.001)
