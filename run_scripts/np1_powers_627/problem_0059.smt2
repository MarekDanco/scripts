; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^3 + 4y^2 + 4z^2 + 5w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x x) (* 4 (* y y)) (* 4 (* z z)) (* 5 (* w w w)))))))

(check-sat)