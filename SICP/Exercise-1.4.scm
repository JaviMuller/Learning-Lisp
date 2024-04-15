;; Exercise 1.4

(define (a-plus-abs-b a b)
  ((if (< b 0) - +) a b))
; If b < 0, then it will compute (- a b), otherwise, it will compute (+ a b).
; This means that the result will be the same as (+ a (abs b))