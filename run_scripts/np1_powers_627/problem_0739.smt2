; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^2 + y^3 + 2z^2 + 5w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x)) (* y y y) (* 2 (* z z)) (* 5 (* w w w)))))))

(check-sat)