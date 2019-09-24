; define integral
(define (integral delay-integrand initial-value dt)
 (let ((integrand (force delay-integrand)))
  (cons-stream initial-value
               (if (stream-null? integrand)
                   '()
                   (integral (delay (stream-cdr integrand))
                             (+ (* dt (stream-car integrand))
                                initial-value))))))
