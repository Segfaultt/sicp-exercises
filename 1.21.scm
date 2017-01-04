(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((divides? test-divisor n) test-devisor)
	(else (find-divisor n (+ test-divisor 1)))))

(define (divides? x y)
  (= (remainder x y) 0))
