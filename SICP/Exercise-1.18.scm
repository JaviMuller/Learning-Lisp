;;;; Exercise 1.18
(define (double n) (+ n n))

(define (halve n) (/ n 2))

(define (even? n) (= (remainder n 2) 0))

(define (mult a b) (mult-iter a b 1))

(define (mult-iter a b res)
    (cond ((= b 0) res)
          ((even? b) (mult-iter (double a) (halve b) res))
          (else (mult-iter a (- b 1) (+ res a)))))
