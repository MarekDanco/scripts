; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^3 + 3y^2 + 2z^4 + 5w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x x)) (* 3 (* y y)) (* 2 (* z z z z)) (* 5 (* w w)))))))

(check-sat)