; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^3 + 3y + z + 3w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x x)) (* 3 y) z (* 3 (* w w w w)))))))

(check-sat)