;;;; Chapter 1.1 sqrt
(define (square x) (* x x))

(define (sqr-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqr-iter (improve guess x) x)))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))

(define (sqrt x) (sqr-iter 1.0 x))
