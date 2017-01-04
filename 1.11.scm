(define (fr n) ;;Recusive procedure
  (if (< n 3)
    n
    (+ (fr (- n 1))
       (* 2 (fr (- n 2)))
       (* 3 (fr (- n 3))))))

(define (fi n) ;;Iterative procedure
  (define (f-iter count
		  prev1
		  prev2
		  prev3)
    (if (> count n)
      prev1
      (f-iter (+ count
		 1)
	      (+ prev1
		 (* 2
		    prev2)
		 (* 3 
		    prev3))
	      prev1
	      prev2)))
  (if (< n 3)
    n
    (f-iter 3 2 1 0)))
