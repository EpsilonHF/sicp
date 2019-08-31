; define mobile 
(define (make-mobile left right)
 (list left right))

(define (make-branch length structure)
 (list length structure))

; a
(define left-branch car)
(define right-branch cadr)
(define (branch-structure branch)
 (cadr branch))
(define (branch-length branch)
 (car branch))


; b
(define (total-weight mobile)
 (+ (branch-weight (left-branch mobile))
    (branch-weight (right-branch mobile))))

(define (branch-weight branch)
 (if (hangs? branch)
     (total-weight (branch-structure branch))
     (branch-structure branch)))

(define (hangs? branch)
 (pair? (branch-structure branch)))


; test

(define mobile (make-mobile (make-branch 10 25)
                            (make-branch 5 20)))

(total-weight mobile)

; c
(define (branch-torque branch)
 (* (branch-weight branch)
    (branch-length branch)))

(define (balance? mobile)
 (let ((left (left-branch mobile))
       (right (right-branch mobile)))
  (and (= (branch-torque left) (branch-torque right))
       (branch-balance? left)
       (branch-balance? right))))

(define (branch-balance? branch)
 (if (hangs? branch)
     (balance? (branch-structure branch))
     (#t)))


; d
(define (make-mobile left right) (cons left right))
(define (make-branch length structure)
 (cons length structure))

(define left-branch car)
(define right-branch cdr)
(define branch-structure cdr)
(define branch-lenght car)
