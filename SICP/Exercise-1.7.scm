;;;; Exercise 1.7
(define (square x) (* x x))

;; Small numbers
(square (sqrt 0.0001))
0.0010438358335233748 ; An order of magnitude off
; The fixed precision is not scaled down for small numbers, giving inaccurate results

;; Large numbers (computation gets stuck)
;(sqrt 1e+100)

; The small fixed precision makes it so that in two successive iterations of improve, the value oscillates more than the tolerance due to float representation.
; Thus it will continue to try to improve indefinitely, as it won't be able to reach the precision specified

(define (new-good-enough? guess x)
  (< (abs (- guess (improve guess x))) (* 1e-5 guess)))

(define (new-sqr-iter guess x)
  (if (new-good-enough? guess x)
      guess
      (new-sqr-iter (improve guess x) x)))

(define (new-sqrt x) (new-sqr-iter 1.0 x))
