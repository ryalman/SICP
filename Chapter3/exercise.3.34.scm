;(multiplier a a b) will create 3 state variables. process-new-value will process
;only when a is set but not b in (squarer a b) because when ever a is set, two
;two multipliers will be updated and (has-value? m1) and (has-value? m2) will be true
;but when the product is set to a new value, it will not update the multiplier
;because it checks both the product and one of the multipliers are set to update
;the the other multiplier.
