; define div-series
(define (div-series s1 s2)
 (if (eq? 0 (stream-car s2))
     (error "can't be zero")
     (mul-series s1 (reciprocal-series s2))))
