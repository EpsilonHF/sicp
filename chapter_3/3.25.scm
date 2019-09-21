; define lookup
(define (lookup key-list table)
 (let ((current-key (car key-list))
       (remain-key (cdr key-list)))
  (let ((record (assoc current-key table)))
   (cond ((and record (null? remain-key)) (cdr record))
         ((not record) #f)
         (else (lookup remain-key record))))))

; define insert!
(define (insert! key-list table)
 (let ((current-key (car key-list))
       (remain-key (cdr key-list)))
  (let ((record (assoc current-key table)))
   (cond ((and record (null? remain-key))
          (set-cdr! record value))
         ((and record remain-key)
          (insert! remain-key record))
         ((and (not record) remain-key)
          (begin (set-cdr! table (cons current-key '()))
                 (insert! remain-key (cdr table))) 
         (else (set-cdr! table
                        (cons (cons current-key value)
                              (cdr table)))))))
 'ok)



