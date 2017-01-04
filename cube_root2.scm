(define (cubert x)
  (define (cube a)
    (* a a a))
  (define (square a)
    (* a a))
  (define tolerence 10000)
  (define (good-enough? guess )
    (< (abs (- x
	       (cube guess)))
       (/ guess
	  tolerence)))
  (define (average3 a b c)
    (/ (+ a
	  b
	  c)
       3))
  (define (improve guess)
    (average3 (/ x
		 (square guess))
	      guess
	      guess))
  (define (cubert-iter guess)
    (if (good-enough? guess)
      guess
      (cubert-iter (improve guess))))
  (cubert-iter 1.0))
