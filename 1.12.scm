;;5|1 4 6 4 1
;;4|1 3 3 1 0
;;3|1 2 1 0 0
;;2|1 1 0 0 0
;;1|1 0 0 0 0
;; |---------
;;  1 2 3 4 5

(define (pascal x y)
  (cond ((= x 1)
	 1)
	((> x y)
	 0)
	(else (+ (pascal x (- y 1))
		 (pascal (- x 1) (- y 1))))))