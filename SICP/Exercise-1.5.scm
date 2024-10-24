;;;; Exercise 1.5
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

#|
In applicative order evaluation, he will find that the value is never returned.
This happens because to evaluate, it will try to find the value of (p) first, and then apply test to the result.
As p simply calls itself recursively, the program will just keep doing recursive calls.
In normal order evaluation, it would only compute p if it had to. The order of computations would be this:
  (test 0 (p))
  (if (= 0 0) 0 (p))
  (if #t 0 (p))
  0
|#
