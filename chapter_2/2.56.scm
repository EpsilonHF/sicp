(load "deriv.scm")

(define (exponentiation? expr)
 (and (pair? expr) (eq? (car expr) '**)))

(define base cadr)
(define exponent caddr)

(define (make-exponentiation base exponent)
 (cond ((= exponent 0) 1)
       ((= exponent 1) base)
       (else (list '** base exponent))))

; define new deriv
(define (deriv expr var)
 (cond ((number? expr) 0)
       ((variable? expr)
       (if (same-variable? expr var) 1 0))
       ((sum? expr)
        (make-sum (deriv (addend expr) var)
                  (deriv (augend expr) var)))
       ((product? expr)
        (make-sum
         (make-product (multiplier expr)
                       (deriv (multiplicand expr) var))
         (make-product (deriv (multiplier expr) var)
                       (multiplicand expr))))
       ((exponentiation? expr)
        (let ((n (exponent expr))                                
              (u (base expr)))
         (make-product n
                       (make-product
                        (make-exponentiation u (- n 1))                        
                        (deriv u var)))))
       (else
        (error "unknown expression type -- DERIV" expr))))

; test
(deriv '(** x 3) 'x)

