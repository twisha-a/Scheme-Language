;;; list for L and M is defined below. Edit the value of L and M and run
(define L '(4 2))
(define M '(1 3 5))

;;; insert function from Q2
(define (insert x L)
  (cond ((null? L) (list x))
        ((< x (car L)) (cons x L))
        (else (cons (car L) (insert x (cdr L))))))


;;; insert-all function
(define (insert-all L M)
  (if (null? L)
      M
      (insert-all (cdr L) (insert (car L) M))))
;;; Edit the value of L and M in lines 2,3 and run
(insert-all L M)