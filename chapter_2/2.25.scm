(define test1 (list 1 3 (list 5 7) 9))
(define test2 (cons (cons 7 ()) ()))
(define test3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

(cadr (car (cdr (cdr test1))))
(car (car test2))
(cadr (cadr (cadr (cadr (cadr (cadr test3))))))
