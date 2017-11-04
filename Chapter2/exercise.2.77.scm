;when (magnitude z) is called, it calls apply generic with 'magnitude '(complex)
;this returns  the globalized magnitude procedure. The magnitude procedure itself
;then calls apply-generic for several times depending on the representation of the
;complex number, that is, if it uses rectangular form, it would call apply-generic 
;for real-part and imag-part, or in polar form, it might simply return
;the magnitude. It is a two level abstraction, one from arithmetic package and one from
;complex package. 
