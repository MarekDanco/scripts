; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^2 + y^3 + 4z^3 + w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x)) (* y y y) (* 4 (* z z z)) (* w w w))))))

(check-sat)