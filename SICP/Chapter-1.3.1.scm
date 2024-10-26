;;;; Chapter 1.3.1
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (1+ n)
  (+ n 1))

(define (cube x) (* x x x))

(define (sum-cubes a b)
  (sum cube a 1+ b))

(define (indentity x) x)

(define (sum-integers a b)
  (sum identity a 1+ b))

(define (pi-sum a b)
  (define (pi-term n)
    (/ 1.0 (* n (+ n 2))))
  (define (pi-next n)
    (+ n 4))
  (sum pi-term a pi-next b))

(define (integral f a b dx)
  (define (next-dx x)
    (+ x dx))
  (* (sum f (+ a (/ dx 2)) next-dx b)
     dx))
