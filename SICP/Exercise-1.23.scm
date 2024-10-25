;;;; Exercise 1.23
(define (square x) (* x x))

(define (next n)
    (if (= n 2)
        3
        (+ n 2)))

(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (next test-divisor)))))

(define (divides? a b) (= (remainder b a) 0))

(define (prime? n) (= (smallest-divisor n) n))

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

#|
1000:
1009 *** 1 (old 2)
1013 *** 1 (old 2)
1019 *** 2 (old 2)

10000:
10007 *** 3 (old 5)
10009 *** 4 (old 4)
10037 *** 3 (old 8)

100000:
100003 *** 10 (old 11)
100019 *** 7  (old 9)
100043 *** 7  (old 9)

1000000:
1000003 *** 24 (old 39)
1000033 *** 23 (old 52)
1000037 *** 22 (old 40)
|#
