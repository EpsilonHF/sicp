; define random
(define (random-in-range low high)
 (let ((range (- high low)))
  (+ low (random range))))

; define monte-carlo
(define (monte-carlo trials experiment)
 (define (iter trials-remaining trials-passed)
  (cond ((= trials-remaining 0) (/ trials-passed trails))
        ((experiment) (iter (- trials-remaining 1)
                            (+ trials-passed 1)))
        (else (iter (- trials-remaining 1) trials-passed)))
 (iter trials 0))

; define intergrate
(define (integrate p x1 x2 y1 y2 trials)
 (mote-carlo trials 
  (lambda ()
   (p (random-in-range x1 x2)
      (random-in-range y1 y2)))))

