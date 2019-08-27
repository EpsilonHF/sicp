; report time
(define (timed-prime-test n)
 (newline)
 (display n)
 (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
 (if (prime? n)
  (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
 (display " *** ")
 (display elapsed-time))


; prime?
(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
 (cond ((> (* test-divisor test-divisor) n) n)
       ((divides? test-divisor n) test-divisor)
       (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b) (= (remainder b a) 0))

(define (prime? n) 
 (= n (smallest-divisor n)))


; next odd
(define (next-odd n)
 (if (odd? n) (+ n 2) (+ n 1)))


(define (continue-prime n count)
 (cond ((= count 0) (display "are primes."))
       ((prime? n) 
        (display n)
        (newline)
        (continue-prime (next-odd n) (- count 1)))
       (else (continue-prime (next-odd n) count))))


(define (search-for-prime n)
    (let ((start-time (real-time-clock)))
        (continue-prime n 3)
        (- (real-time-clock) start-time)))


(search-for-prime 10000)
