;;;; Exercise 1.19
#|
T(a, b) = (p*(a) + q*(a+b), q*(a) + p*(b))
T(T(a, b)) = (p*(p*(a) + q*(a+b)) + q*(p*(a) + q*(a+b) + q*(a) + p*(b)), q*(p*(a) + q*(a+b)) + p*(q*(a)+p*(b)))
           = (p^2*a + p*q*(a+b) + q*p*a + q^2*(a+b) + q^2*a + q*p*b, q*p*a + q^2*a + q^2*b + p*q*a + p^2*b)
           = ((p^2 + q^2)*(a) + (q^2 + 2*q*p)*(a+b), (q^2 + 2*p*q)*a + (p^2 + q^2)*b)
p'<-(p^2 + q^2)
q'<-(q^2 + 2*p*q)
|#

(define (fib n)
    (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
    (cond ((= count 0) b)
          ((even? count)
           (fib-iter a
                     b
                     (+ (square p) (square q))       ; compute p'
                     (+ (square q) (* 2 p q)) ; compute q'
                     (/ count 2)))
           (else (fib-iter (+ (* b q) (* a q) (* a p))
                           (+ (* b p) (* a q))
                           p
                           q
                           (- count 1)))))
