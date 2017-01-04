;; p = 0 and q = 1
;; Tpq = a <- bq + aq + ap and b <- bp + aq
;; Tpq = a <- b + a and b <- a
;; Tp'q' = a <- a and b <- b

(define (square x)
  (* x x))

(define (fib n)
  (define (iter a b p q count)
    (cond ((= count 0) b)
	  (else (iter (+ (* b q)
			 (* a q)
			 (* a p))
		      (+ (* b p)
			 (* a q))
		      p
		      q
		      (- count 1)))))
  (iter 1 0 0 1 n))

(define (fast-fib n)
  (define (iter a b p q count)
    (cond ((= count 0) b)
	  ((even? count)
	   (iter a
		 b
		 (+ (square q)
		    (square p))
		 (+ (* 2 p q)
		    (square q))
		 (/ count 2)))
	  (else (iter (+ (* b q)
			 (* a q)
			 (* a p))
		      (+ (* b p)
			 (* a q))
		      p
		      q
		      (- count 1)))))
  (iter 1 0 0 1 n))
