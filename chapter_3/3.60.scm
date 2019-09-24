; define mul-series
(define (mul-series s1 s2)
 (cons-stream (* (stream-car s1)
                 (stream-car s2))
              (add-streams (add-streams (scale-stream (stream-cdr s1) (stream-car s2))
                                        (scale-stream (stream-cdr s2) (stream-car s1)))
                           (cons-streams 0 (mul-stream (stream-cdr s1) (stream-cdr s2))))))
