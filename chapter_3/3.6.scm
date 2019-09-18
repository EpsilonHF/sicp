; define new rand
(define rand
 (define x random-init)
 (define rand-next
  (lambda ()
   (set! x (rand-update x))
   x))
 (define rand-reset
  (lambda (number)
   (set! x number)
   x))
 (define (dispatch m)
  (cond ((eq? m 'generate) rand-next)
        ((eq? m 'reset) rand-reset)
        (else (error "wrong command"))))
 dispatch)
