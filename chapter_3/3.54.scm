; define factorials
(define facrorials
 (cons-stream 1 (mul-streams 
                 (intergers-starting-from 2)
                 factorials)))

(define (mul-streams s1 s2)
 (stream-map * s1 s2))
