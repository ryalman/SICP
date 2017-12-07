;a) (+ balance 10)   110
;   (- balance 20)   90
;   (- balance (/ balance 2)) 45
;
; secend option
;   (- balance (/ balance 2)) 50
;   (- balance 20)            30
;   (+ balance 10)            40



;b) interleaved example
;
;  Peter accesses balance     100
;  Paul accesses balance      100
;  Marry access balance       100
;  Marry set balance          50
;  Peter deposit 10           110
;  Paul withdrow 20           90
;
;  The result should be       40
;  and Not                    90
