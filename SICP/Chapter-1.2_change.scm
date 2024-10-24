; How many different ways can we make change of a€ given a combination of n types of coins
; Recursive solution
(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 2)
        ((= kinds-of-coins 3) 5)
        ((= kinds-of-coins 4) 10)
        ((= kinds-of-coins 5) 20)
        ((= kinds-of-coins 6) 50)))

(define (count-change amount) (cc amount 6))

(define (cc amount kinds-of-coins)
  (cond ((= amount 1) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount (- kinds-of-coins 1))
                 (cc (- amount 
                        (first-denomination kinds-of-coins))
                     kinds-of-coins)))))

; Iterative solution (needs discrete mathematics generating function)
(define (cc-iter amount kinds-of-coins))
