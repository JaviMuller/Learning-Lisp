;;;; Exercise 1.6
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)

(new-if (= 1 1) 0 5)

#|
Rewriting the sqr-iter function to use the new if will cause it to not be able to compute.

This happens because the new-if is a procedure, which, when trying to apply it, will first evaluate its arguments
and then run the body. However, as we pass a recursive call, it will keep calling recursively sqr-iter.
|#
