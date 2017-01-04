(define (fast-expt b n)
  (define (square x)
    (* x x))
  (define (iter value-n value)
    (cond ((= n value-n) value)
	  ((> n (* 2 value-n)) (iter (* 2 value-n) (square value)))
	  (else (iter (+ value-n 1) (* value b)))))
  (if (= n 0) 1
    (iter 1 b)))
