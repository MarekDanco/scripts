; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^3 + y^3 + z + w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x x)) (* y y y) z (* w w))))))

(check-sat)