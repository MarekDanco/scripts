; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^2 + 3y^3 + z^2 + w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x)) (* 3 (* y y y)) (* z z) (* w w w))))))

(check-sat)