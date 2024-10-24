;;;; Exercise 1.8
(define (square x) (* x x))

(define (cubrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cubrt-iter (improve-cubrt guess x) x)))

(define (good-enough? guess x)
  (< (abs (- guess (improve-cubrt guess x))) (* 1e-5 guess)))

(define (improve-cubrt guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cubrt x) (cubrt-iter 1.0 x))
