; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^4 + y^2 + 5z^3 + w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x x x)) (* y y) (* 5 (* z z z)) (* w w w w))))))

(check-sat)