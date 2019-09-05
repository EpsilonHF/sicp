; define matrix operations
(define (dot-product v w)
 (accumulate + 0 (map * v w)))

; define matrix-*-vector
(define (matrix-*-vector m v)
 (map (lambda (w)
       (dot-product w v)) 
       m))

; define transpose
(define (transpose mat)
 (accumulate-n cons () mat))


; define matrix-*-matrix
(define (matrix-*-matrix m n)
 (let ((cols (transpose n)))
  (map (lambda (row)
               (martix-*vector cols row))
   m)))
