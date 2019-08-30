; define reverse
(define (reverse l)
 (define (reverse-iter rest result)
  (if (null? rest)
      result
      (reverse-iter (cdr rest) (cons (car rest) result))))
 (reverse-iter l ()))

; test
(reverse (list 1 2 3 4))
