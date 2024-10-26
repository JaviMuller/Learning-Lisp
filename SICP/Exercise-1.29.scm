;;;; Exercise 1.29
(define (even? n) (< (abs (/ n 2)) 0.00001))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (simpson-integral f a b n)
  (let ((h (/ (- b a) n)))
    (define (simpson-next x)
      (+ x h h))
    (define (simpson-odd-term x)
      (* 4 (f x)))
    (define (simpson-even-term x)
      (* 2 (f x)))
    (/ (* h 
          (+ (f a) ; y0
             (sum simpson-odd-term (+ a h) simpson-next b) ; 2*y1 + 2*y3 + ...
             (sum simpson-even-term (+ a h h) simpson-next (- b h)) ; 2*y2 + 2*y4 + ...
             (f b))) ; yn
       3)))

#|
For Chapter 1.3.1 integral:

> (integral cube 0 1 0.001)
0.249999875000001
> (integral cube 0 1 0.0001)
0.24999999874993412

For Simpson's method:

> (simpson-integral cube 0 1 100.0)
0.25000000000000044
> (simpson-integral cube 0 1 1000.0)
0.25000000000000083
|#
