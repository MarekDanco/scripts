; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^2 + 2y^3 + 3z^2 + 5w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x)) (* 2 (* y y y)) (* 3 (* z z)) (* 5 (* w w)))))))

(check-sat)