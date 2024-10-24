; Exercise 1.16
(define (square x) (* x x))

(define (even? n)
        (= (remainder n 2) 0))

#|
res = 1           b = 2      n = 11
res = 2           b = 2      n = 10
res = 2           b = 2^2    n = 5
res = 2*2^2       b = 2^2    n = 4
res = 2*2^2       b = 2^4    n = 2
res = 2*2^2       b = 2^8    n = 1
res = 2*2^2*2^8   b = 2^8    n = 0
return res
|#

(define (fast-expt b n res)
        (cond ((= n 0) res)
              ((even? n) (fast-expt (square b) (/ n 2) res))
              (else (fast-expt b (- n 1) (* b res)))))
