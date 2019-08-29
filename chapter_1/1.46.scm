; define iterative-improve
(define (iterative-improve good? improve)
 (lambda (init)
  (define (try guess)
   (let ((next (improve guess)))
    (if (good? guess)
        guess
        (try next))))
  (try init)))
