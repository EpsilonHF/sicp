; define make-monitored
(define (make-monitored f)
 (define number 0)
 (lambda (m)
  (if (eqv? m 'how-many-calls?)
      number
      (begin (set! number (+ 1 number))
             (f m)))))


; test
(define s (make-monitored sqrt))
(s 100)
(s 100)
(s 'how-many-calls?)
