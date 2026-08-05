; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^4 + 5y^2 + z^2 + 5w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x x x)) (* 5 (* y y)) (* z z) (* 5 (* w w w)))))))

(check-sat)