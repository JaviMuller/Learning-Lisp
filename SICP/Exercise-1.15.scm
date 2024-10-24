;;;; Exercise 1.15
(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
    (if (not (> (abs angle) 0.1))
        angle
        p (sine (/ angle 3.0))))

#|
a)
  sine 12.5
  p (sine (4.1666))
  p (p (sine (1.3888)))
  p (p (p (sine (0.46296))))
  ...
  number of calls to p = ceil (log_3 125) -> 5

b)
  both size and steps grow logarithmically 
|#
