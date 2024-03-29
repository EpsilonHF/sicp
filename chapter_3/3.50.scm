; define stream-map
(define (stream-map proc . argstreams)
 (if (null? (car argstreams))
     '()
     (cons-stream
      (apply proc (map stream-car argstreams))
      (apply stream-map
       (cons proc (map stream-cdr argstreams))))))
