; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^3 + 4y^2 + 4z^4 + w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x x)) (* 4 (* y y)) (* 4 (* z z z z)) (* w w w w))))))

(check-sat)