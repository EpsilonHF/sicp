; define stream-limit
(define (stream-limit s tolerance)
 (let ((first (stream-car s))
       (second (stream-car (stream-car s))))
  (if (< (abs (- first second)) tolerance)
      second
      (stream-limit (stream-cdr s) tolerance))))
