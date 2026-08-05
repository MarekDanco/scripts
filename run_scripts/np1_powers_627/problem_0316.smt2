; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^2 + 5y^3 + 5z^3 + 3w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x)) (* 5 (* y y y)) (* 5 (* z z z)) (* 3 (* w w)))))))

(check-sat)