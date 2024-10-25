;;;; Exercise 1.27
(define (square x) (* x x))

(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b) (= (remainder b a) 0))

(define (prime? n) (= (smallest-divisor n) n))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
          (remainder (square (expmod base (/ exp 2) m))
                     m))
        (else (remainder (* base (expmod base (- exp 1) m))
                         m))))

(define (fermat-test? n k)
    (= (expmod k n n) k))

(define (carmichael-test? n)
    (define (aux i)
        (cond ((= n i) #t)
              ((fermat-test? n i) (aux (+ i 1)))
              (else #f)))
    (aux 2))

(carmichael-test? 561)
(carmichael-test? 1105)
(carmichael-test? 1729)
(carmichael-test? 2465)
(carmichael-test? 2821)
(carmichael-test? 6601)

; 561, 1105, 1729, 2465, 2821, 6601
