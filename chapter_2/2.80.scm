; define zeros?
(define install-zeros?
 (put 'zero? 'scheme-number 
  (lambda (x) (= x 0)))
 (put 'zero? 'rational
  (lambda (x) (and (= (numer x) 0)
                   (= (denom x) 0))))
 (put 'zero? 'complex
  (lambda (x) (and (= (real-part x) 0)
                   (= (imag-part x) 0)))))
