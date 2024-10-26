;;;; Exercise 1.28
#|
Miller-Rabin test

Let:
  - n be a prime
  - a be a positive integer < n
Then:
  - a^(n-1) ≡ 1 (mod n)

Modify expmod:
  - Whenever we square in expmod, check if we have found
  a nontrivial square root of 1 mod n.
  - (Nontrivial square => ≠ 1 ∨ n-1)

Relies on:
  - If n is an odd number, not prime, then for at least half a<n,
  the Miller-Rabin test will reveal a non-trivial square root of 1.
|#

(define (square x) (* x x))

(define (even? n) (= (remainder n 2) 0))

(define (expmod-miller base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
          (remainder (square (expmod-miller base (/ exp 2) m))
                     m))
        (else (remainder (* base (expmod-miller base (- exp 1) m))
                         m))))

(define (miller-rabin-test? n a)
  (let ((res (expmod-miller a (- n 1) n)))
       (not (= res 1))))

(define (prime? n)
  (define (aux b n)
    (cond ((> b (/ n 2)) #t)
          ((miller-rabin-test? n b) (aux (+ b 1) n))
          (else #f)))
  (aux 2 n))

(define (fast-prime? n times)
    (cond ((= times 0) #t)
          ((miller-rabin-test? n (+ 1 (random (- (remainder n 4294967087) 1)))) (fast-prime? n (- times 1)))
          (else #f)))

(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
    (if (fast-prime? n 3)
        (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
    (display " *** ")
    (display elapsed-time))
