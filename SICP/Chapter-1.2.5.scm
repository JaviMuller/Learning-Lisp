;;;; Chapter 1.2.5
(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))
