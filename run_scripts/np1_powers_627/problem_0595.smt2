; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^2 + 3y^2 + 5z^3 + 3w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x) (* 3 (* y y)) (* 5 (* z z z)) (* 3 (* w w w)))))))

(check-sat)