(define L '(3 6 1 5 2 7 4))

(define (sort L)
  (letrec ((insert (lambda (x sorted-L)
                     (cond ((null? sorted-L) (list x))
                           ((< x (car sorted-L)) (cons x sorted-L))
                           (else (cons (car sorted-L) (insert x (cdr sorted-L))))))))
    (define (helper unsorted-L sorted-L)
      (if (null? unsorted-L)
          sorted-L
          (helper (cdr unsorted-L) (insert (car unsorted-L) sorted-L))))
    (helper L '())))
(sort L)

