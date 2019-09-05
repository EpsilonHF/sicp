; define unique-pairs
(define (unique-pairs n)
 (flatmap (lambda (i)
           (map (lambda (j) (list i j))
                (enumerate-interval 1 (- i 1))))
          (enumerate-interval 1 n)))


; define prime-sum-pairs
(define (prime-sum-pairs)
 (map make-pair-sum
  (filter prime-sum?
   (unique-pairs n))))
