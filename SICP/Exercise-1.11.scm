;;;; Exercise 1.11
(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))))

(define (f n) (f-iter 3 2 1 n))

(define (f-iter a b c count)
  (cond ((= count 3) a)
        ((= count 2) b)
        ((= count 1) c)
        ((= count 0) 0)
        (else (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1)))))
