; define sum
(define (install-sum-package)
 (define (addend x) (car x))
 (define (augend x) (cadr x))
 (define (make-sum x y)
  (cond ((=number? x 0) y)
        ((=number? y 0) x)
        ((and (number? x) (number? y))
         (+ x y))
        (else (list '+ x y))))
 (put 'addend '+ addend)
 (put 'augend '+ augend)
 (put 'make-sum? '+ make-sum?)
 (put 'deriv '+ 
  (lambda (expr var)
   (make-sum (deriv (addend expr) var)
             (deriv (augend expr) var)))))


; define product
(define (install-product-package)
 (define (multiplier x) (car x))
 (define (multiplicand x) (cadr x))
 (define (make-product x y)
  (cond ((or (=number? x 0) (=number? y 0)) 0)
        ((=number? x 1) y)
        ((=number? y 1) x)
        ((and (number? x) (number? y))
         (* x y))
        (else (list '* x y))))
 (put 'multiplier '* multiplier)
 (put 'multiplicand '* multiplicand)
 (put 'make-procdcut? '* make-product?)
 (put 'deriv '*
  (lambda (expr var)
   (make-sum (make-product (multiplier expr)
                           (deriv (multiplicand expr) var))
             (make-product (multiplicand expr)
                           (deriv (multiplier expr) var))))))


; define exponentation
(define (install-exponentiation-package)
 (define (base x) (car x))
 (define (exponent x) (cadr x))
 (define (make-exponentiation base n)
  (cond ((= n 0) 1)
        ((= n 1) base)
        (else (list '** base n))))
 (put 'base '** base)
 (put 'exponent '** exponent)
 (put 'make-exponentiation '** make-exponentiation)
 (put 'deriv '**
  (lambda (expr var)
   (let ((n (base expr))
         (u (exponent expr)))
    (make-product n (make-product
                     (make-exponentiation u (- n 1))
                     (deriv u var)))))))


