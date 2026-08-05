; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^2 + 3y^3 + 3z^3 + w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x)) (* 3 (* y y y)) (* 3 (* z z z)) (* w w w w))))))

(check-sat)