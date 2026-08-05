; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^2 + 4y^3 + 5z^2 + w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x) (* 4 (* y y y)) (* 5 (* z z)) (* w w w))))))

(check-sat)