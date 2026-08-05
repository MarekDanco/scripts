; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^2 + y^3 + 4z^2 + 5w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x)) (* y y y) (* 4 (* z z)) (* 5 (* w w)))))))

(check-sat)