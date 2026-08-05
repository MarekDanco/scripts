; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^3 + 2y^2 + 2z^3 + w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x x) (* 2 (* y y)) (* 2 (* z z z)) (* w w w))))))

(check-sat)