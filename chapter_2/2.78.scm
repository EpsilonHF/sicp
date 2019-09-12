; define tag
(define (type-tag datum)
 (cond ((number? datum) 'scheme-number)
       ((pair? datum) (car datum))
       (else (error "bad tag"))))

(define (attach-tag type-tag content)
 (if (number? content)
     content
     (cons type-tag content)))
