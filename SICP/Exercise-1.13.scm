;;;; Exercise 1.13
#|
phi -> (/ (+ 1 (sqrt 5)) 2)
psi -> (/ (- 1 (sqrt 5)) 2)
P_1 -> (Fib n) = (/ (- (^ phi n) (^ psi n)) (sqrt 5))

Base case
  (Fib 0) -> 0 (which is the closest integer to (/ (- 1 1) (sqrt 5)) = 0)
  (Fib 1) -> 1 (which is the closest integer to (/ (- phi psi) (sqrt 5) = 1)

Inductive case - IH: P(n-1) and P(n-2)
  (Fib n) = (+ (Fib (- n 1)) (Fib (- n 2)))
  (Fib n) = (+ (/ (- (^ phi (- n 1)) (^ psi (- n 1))) (sqrt 5))
               (/ (- (^ phi (- n 2)) (^ psi (- n 2))) (sqrt 5)))
  (Fib n) = (/ (- 
                   (+ (^ phi (- n 1)) (^ phi (- n 2)))
                   (+ (^ psi (- n 1)) (^ psi (- n 2)))) 
               (sqrt 5))
  ...
|#
