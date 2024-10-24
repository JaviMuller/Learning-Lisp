; Chapter 1.2.4
(define (square x) (* x x))

(define (expt-rec b n)
        (if (= n 0)
            1
            (* b (expt-rec b (- n 1)))))

(define (expt b n)
        (expt-iter b n 1))

(define (expt-iter b n res)
        (if (= n 0)
            res
            (expt-tail b (- n 1) (* b res))))

(define (even? n)
        (= (remainder n 2) 0))

(define (fast-expt b n)
        (cond ((= n 0) 1)
              ((even? n) (square (fast-expt b (/ n 2))))
              (else (* b (fast-expt b (- n 1))))))
