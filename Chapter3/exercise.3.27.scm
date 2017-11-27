(define (memoize f)
  (let ((table (make-table)))
    (lambda (x)
      (let ((previously-computed-result (lookup x table)))
        (or previously-computed-result
            (let ((result (f x)))
              (insert! x result table)
              result))))))

(define memo-fib (memoize (lambda (n)
                            (cond ((= n 0) 0)
                                  ((= n 1) 1)
                                  (else (+ (memo-fib (- n 1))
                                           (memo-fib (- n 2))))))))

;When we call (memo-fib 3) it will recursively call itself for 2 and 1 and
;then will will recursive call for 1 and 0 again; So the function only goes deep
;in the recursion and memoize starting from 0 and 1. This allow subsequent calls
;to return fast because the results read from the table; Assuming the table is 
;a hash table, It will be enormously faster than the default fibonacci algorithms.
;memoization is a technique that is used in dynamic programming.
