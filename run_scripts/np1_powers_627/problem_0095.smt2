; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x^3 + 3y^2 + 2z^2 + 3w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 (* x x x)) (* 3 (* y y)) (* 2 (* z z)) (* 3 (* w w)))))))

(check-sat)