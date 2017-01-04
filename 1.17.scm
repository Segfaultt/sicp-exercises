;;4*6=2*12=1*24
;;4*6=6+6+6+6
(define (half x)
  (* x 0.5))

(define (double x)
  (* x 2))

(define (fast-multiply a b)
  (cond ((= a 1) b)
	((even? a) (fast-multiply (half a) (double b)))
	(else (+ b (fast-multiply (- a 1) b)))))
