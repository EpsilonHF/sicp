; define union-set
(define (union-tree tree1 tree2)
 (list->tree 
  (union-set (tree->list-2 tree1)
             (tree->list-2 tree2))))


; define intersection-set
(define (intersection-tree tree1 tree2)
 (list->tree
  (intersection-tree (tree->list2 tree1)
                     (tree->list2 tree2))))
