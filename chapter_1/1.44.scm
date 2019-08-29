; define smooth
(define (smooth f)
 (lambda (x) (/ (+ (f x) 
                   (f (- x dx)) 
                   (f (+ x dx))) 
              3)))



