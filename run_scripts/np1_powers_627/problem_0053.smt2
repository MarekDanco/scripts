; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^2 + 3y^4 + 4z^3 + 3w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x)) (* 3 (* y y y y)) (* 4 (* z z z)) (* 3 (* w w)))))))

(check-sat)