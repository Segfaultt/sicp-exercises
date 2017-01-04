;; A program to test to see what a procedure from
;; 1.2.6 Example: testing for primality does and 
;; how it works

(define (expmod base e m)
  (cond ((= e 0) 1)
	((even? e)
	 (remainder (square (expmod base (/ e 2) m))
		    m))
	(else
	  (remainder (* base (expmod base (- e 1) m))
		     m))))

(define (expmod2 base e m)
  (remainder (cond ((= e 0) 1)
	((even? e)
	 (square (expmod base (/ e 2) m)))
	(else
	 (* base (expmod base (- e 1) m)))) m))
