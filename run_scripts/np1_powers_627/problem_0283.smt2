; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^3 + 3y^2 + 3z^4 + w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x x) (* 3 (* y y)) (* 3 (* z z z z)) (* w w w))))))

(check-sat)