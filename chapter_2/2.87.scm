; define new =zero?
(define install-=zero?
 (define (=zero? a)
  (let ((type-a (type-tag a)))
   (if ((eqv? type-a 'scheme-number))
		(= (content a) 0)
		(=zero? (coeff (content a))))))
	(put '=zero? '(polynomial scheme-number) =zero?)
)
