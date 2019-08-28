; define recursive product
(define (product term a next b)
 (if (> a b) 
     1
     (* (product term (next a) next b) (term a))))


(define (factorial n)
 (product (lambda (x) x)
          1
          (lambda (x) (+ x 1))
          n))

(factorial 10)

; define iterative product
(define (product-iter term a next b)
 (define (iter a result)
  (if (> a b)
      result
      (iter (next a) (* result (term a))))))
