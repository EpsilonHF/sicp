; define make-triple
(define (make-triple n)
 (flatmpa (lambda (i)
           (map (lambda (j) (cons i j))
                (unique-pairs (- i 1))))
  (enumerate-interval 1 n)))


; define sum?
(define (sum? s)
 (lambda (l)
  (= s
    (+ (car l)
       (cadr l)
       (cadr (cadr l))))))


(define (triple-sum n s)
 (filter (sum? s) (make-triple n)))
