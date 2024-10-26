;;;; Exercise 1.32

; Recursive
(define (accumulate combiner combiner-iden term a next b)
  (if (> a b)
    combiner-iden
    (combiner (term a)
              (accumulate combiner combiner-iden term (next a) next b))))

; Iterative
(define (accumulate combiner combiner-iden term a next b)
  (define (iter a res)
    (if (> a b)
        res
        (iter (next a) (combiner (term a) res))))
  (iter a combiner-iden))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))
