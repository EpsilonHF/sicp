; define gcd
(define (gcd a b)
 (if (= b 0)
     a
     (gcd b (remainder a b))))


(define numer car)
(define denom cdr)

; define make-rat
(define (make-rat n d)
 (let ((g (gcd n d)))
  (if (< d 0) 
      (cons (/ (- n) g) (/ (- d) g))
      (cons (/ n g) (/ d g)))))

(make-rat 15 (- 45))
