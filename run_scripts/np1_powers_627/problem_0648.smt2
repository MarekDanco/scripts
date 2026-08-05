; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^3 + y^2 + 3z^4 + 5w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x x)) (* y y) (* 3 (* z z z z)) (* 5 (* w w w w)))))))

(check-sat)