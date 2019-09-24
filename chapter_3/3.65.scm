; define ln2
(define (ln2-series n)
 (cons-stream (/ 1.0 n)
              (stream-map - (ln2-series (+ n 1)))))

(define ln2-stream
 (partial-sums (ln2-series 1)))
