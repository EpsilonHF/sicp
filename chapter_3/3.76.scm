; define smooth
(define (smooth s)
 (stream-map (lambda (x y) (/ (+ x y) 2))
             s
             (stream-cdr s)))

; define make-zero-crossings
(define (make-zero-crossings input-stream)
 (let ((after-smooth (smooth input-stream)))
  (stream-map sign-change-detector after-smooth (cons 0 after-smooth))))
