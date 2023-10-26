(define L '(1 2 3 4 6 7 8))
(define x 5)
(define (insert x L)
  (cond ((null? L) (list x))
        ((< x (car L)) (cons x L))
        (else (cons (car L) (insert x (cdr L))))))
(insert x L)

