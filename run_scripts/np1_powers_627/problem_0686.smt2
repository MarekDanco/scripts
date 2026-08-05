; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^2 + 3y^2 + 3z^3 + 3w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x)) (* 3 (* y y)) (* 3 (* z z z)) (* 3 (* w w w)))))))

(check-sat)