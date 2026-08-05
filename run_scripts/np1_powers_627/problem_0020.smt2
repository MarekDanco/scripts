; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x^2 + 3y^3 + z + 5w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 (* x x)) (* 3 (* y y y)) z (* 5 (* w w)))))))

(check-sat)