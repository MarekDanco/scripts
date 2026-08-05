; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^3 + 2y^3 + 4z^3 + 5w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x x)) (* 2 (* y y y)) (* 4 (* z z z)) (* 5 (* w w)))))))

(check-sat)