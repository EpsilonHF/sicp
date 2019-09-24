; define RC
(define (RC R C dt)
 (lambda (i v)
  (add-streams (scale-stream i R)
               (integral (scale-stream i (/ 1 c)) v dt))))
