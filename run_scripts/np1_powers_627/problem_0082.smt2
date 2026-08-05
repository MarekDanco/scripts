; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^3 + 2y^2 + z + 5w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x x) (* 2 (* y y)) z (* 5 (* w w)))))))

(check-sat)