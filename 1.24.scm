(define (search-for-primes lower-limit limit)
  (define (iter cur)
    (if (<= cur limit) (timed-prime-test cur))
    (if (<= cur limit) (iter (+ cur 2))
      "done!"))
  (if (even? lower-limit)
    (iter (+ lower-limit 1))
    (iter lower-limit)))

(define (timed-prime-test n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (fast-prime? n 10)
    (begin (newline)
    (display n)
    (report-prime (- (runtime) start-time)))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (square x)
  (* x x))

(define (expmod base ex m)
  (cond ((= ex 0) 1)
	((even? ex)
	 (remainder (square (expmod base (/ ex 2) m))
		    m))
	(else
	  (remainder (* base (expmod base (- ex 1) m))
		     m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
	((fermat-test n) (fast-prime? n (- times 1)))
	(else false)))
