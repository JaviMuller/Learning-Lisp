;;;; Exercise 1.12
(define (pascal c n)
        (cond ((or (< c 0) (> c n)) 'error)
              ((or (= c 0) (= c n)) 1)
              ((= c 0) 1)
              (else (+ (pascal (- c 1) (- n 1)) (pascal c (- n 1))))))
