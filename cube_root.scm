(define (cube x)
  (* x x x))

(define (square x)
  (* x x))

(define tolerence 10000)

(define (good-enough? guess old-guess x )
  (< (abs (- x
	     (cube guess)))
     (/ guess
	tolerence)))

(define (average3 x y z)
  (/ (+ x
	y
	z)
     3))

(define (improve guess x)
  (average3 (/ x
	       (square guess))
	    guess
	    guess))

(define (cubert-iter guess old-guess x)
  (if (good-enough? guess old-guess x)
    guess
    (cubert-iter (improve guess x)
		 guess
		 x)))

(define (cubert x)
  (cubert-iter 1.0
	       0
	       x))
