; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x^2 + 3y^3 + 3z^3 + 4w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 (* x x)) (* 3 (* y y y)) (* 3 (* z z z)) (* 4 (* w w w w)))))))

(check-sat)