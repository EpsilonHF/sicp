; define make-point
(define (make-point x y)
 (cons x y))

(define x-point car)
(define y-point cdr)

(define make-line cons)
(define left-end car)
(define right-end cdr)

(define (midpoint-segment line)
 (make-point (/ (+ (x-point (left-end line)) (x-point (right-end line)))
              2.0)
             (/ (+ (y-point (left-end line)) (y-point (right-end line)))
              2.0)))

(define (print-point p)
 (newline)
 (display "(")
 (display (x-point p))
 (display ",")
 (display (y-point p))
 (display ")"))


; test
(define start (make-point 0 1))
(define end (make-point 9 10))
(define line (make-line start end))
(define mid (midpoint-segment line))
(print-point mid)
(print-point start)
(print-point end)
