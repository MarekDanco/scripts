; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^4 + 3y^2 + 5z^3 + 5w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x x x)) (* 3 (* y y)) (* 5 (* z z z)) (* 5 (* w w w w)))))))

(check-sat)