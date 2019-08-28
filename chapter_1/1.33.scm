; define filter accumaluate
(define (filter-acc combiner null-value term a next b valid?)
 (if (> a b)
     null-value
     (let ((rest-term (filter-acc combiner null-value term (next a) b valid?)))
          (if (valid? a) 
              (combiner (term a) rest-term)
              rest-term))))


