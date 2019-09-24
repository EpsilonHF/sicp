; define integrate-series
(define (integrate-series s)
 (mul-streams s
              (stream-map / ones integers)))
