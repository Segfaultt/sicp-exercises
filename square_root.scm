(define (new-if predicate then-clause else-clause)
  (cond ((predicate) then-clause)
	(else else-clause)))

(define (abs x)
  (if (< x 0) (- x)
    x))

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess oldguess x)
  (< (abs (- oldguess guess)) 0.00001))

(define (sqrt-iter guess oldguess x)
  (if (good-enough? guess oldguess x)
    guess
    (sqrt-iter (improve guess x)
	       guess
	       x)))

(define (sqrt x)
  (sqrt-iter 1.0 0 x))

(sqrt 9)
(sqrt 2)
