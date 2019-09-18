; define new make-account
(define (make-account balance key)
 (define (withdraw amount)
  (if (>= balance amount)
      (begin (set! balance (- balance amount))
             balance)
      "Insufficient funds"))
 (define (deposit amount)
  (set! balance (+ balance amount))
  balance)
 (define incorrect
  (lambda (x)
   "Incorrect password"))
 (define (dispatch pwd m)
  (cond ((not (eq? pwd key)) incorrect)
        ((eq? m 'withdraw) withdraw)
        ((eq? m 'deposit) deposit)
        (else (error "Unknown request: MAKE-ACCOUNT" m))))
 dispatch)


; test

(define (make-joint acc old-key new-key)
 (lambda (action key)
  (if (eq? key new-key)
      (acc old-key action)
      (display "wrong key"))))
