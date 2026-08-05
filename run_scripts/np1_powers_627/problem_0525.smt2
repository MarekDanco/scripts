; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^3 + y^3 + 5z + 5w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x x)) (* y y y) (* 5 z) (* 5 (* w w)))))))

(check-sat)