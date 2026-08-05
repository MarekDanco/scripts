; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^3 + 2y^2 + 4z + w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x x)) (* 2 (* y y)) (* 4 z) (* w w))))))

(check-sat)