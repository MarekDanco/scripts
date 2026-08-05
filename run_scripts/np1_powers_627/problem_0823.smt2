; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^2 + 5y^2 + 3z^2 + 5w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x)) (* 5 (* y y)) (* 3 (* z z)) (* 5 (* w w w)))))))

(check-sat)