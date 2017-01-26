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
  (if (prime? n)
    (begin (newline)
    (display n)
    (report-prime (- (runtime) start-time)))))

(define (prime? n)
  (= n (smallest-devisor n)))

(define (smallest-devisor n)
  (smallest-devisor-iter 2 n))

(define (smallest-devisor-iter test-devisor n)
  (define (next)
    (if (= test-devisor 2) 3
      (+ test-devisor 2))
  (cond ((>= (square test-devisor) n)	n)
	((= (remainder n test-devisor) 0) test-devisor)
	(else (smallest-devisor-iter (next) n))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (square x)
  (* x x))

;the ratio of this alorythm compared to ex 1.22 is 1.5
;rather than 2
;this is because it has to check if test-devisor = 2
