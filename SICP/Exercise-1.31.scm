;;;; Exercise 1.31

; Recursive
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

; Iterative
(define (product term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* result (term a)))))
  (iter a 1))

(define (identity n) n)

(define (1+ n) (+ 1 n))

(define (factorial n)
  (product identity 1 1+ n))
