;;;; Exercise 1.22
(load "Chapter-1.2.6")

(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
    (if (prime? n)
        (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
    (display " *** ")
    (display elapsed-time))

(define (search-for-primes low high)
    (define (test low high)
        (timed-prime-test low)
        (search-for-primes (+ low 2) high))
    (cond ((> low high) (newline))
          ((even? low) (search-for-primes (+ low 1) high))
          (else (test low))))

#|
1000:
1009 *** 2
1013 *** 2
1019 *** 2

10000:
10007 *** 5
10009 *** 4
10037 *** 8

100003 *** 11
100019 *** 9
100043 *** 9

1000003 *** 39
1000033 *** 52
1000037 *** 40
|#
