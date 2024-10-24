;;;; Exercise 1.17
(define (double n) (+ x x))

(define (halve n) (/ n 2))

(define (even? n) (= (remainder n 2) 0))

(define (m a b)
    (if (= b 0)
        0
        (+ a (m a (- b 1)))))

(define (mult a b)
    (cond ((= b 0) 0)
          ((even? b) (double (mult a (halve b))))
          (else (+ b (mult a (- b 1))))))
