;;;; Exercise 1.26

#|
There are two recursive calls to expmod with half the exponent, which
transforms the process from needing O(log n) to O(2^(log n))=O(n) steps.
|#
