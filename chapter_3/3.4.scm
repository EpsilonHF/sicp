; define new make-account
(define (make-account balance key)
 (define count 0)
 (define call-the-cops
  (lambda (x)
   "call cops please"))
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
  (cond ((not (eq? pwd key)) 
         (if (= count 7)
             call-the-cops
             (begin (set! count (+ count 1))
                    incorrect)))
        ((eq? m 'withdraw) withdraw)
        ((eq? m 'deposit) deposit)
        (else (error "Unknown request: MAKE-ACCOUNT" m))))
 dispatch)


; test
(define acc (make-account 100 'secret-password))
((acc 'some-other-password 'deposit) 50)
((acc 'some-other-password 'deposit) 50)
((acc 'some-other-password 'deposit) 50)
((acc 'some-other-password 'deposit) 50)
((acc 'some-other-password 'deposit) 50)
((acc 'some-other-password 'deposit) 50)
((acc 'some-other-password 'deposit) 50)
((acc 'some-other-password 'deposit) 50)
