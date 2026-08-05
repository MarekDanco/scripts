; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^3 + 2y^2 + 5z^2 + 4w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x x) (* 2 (* y y)) (* 5 (* z z)) (* 4 (* w w w)))))))

(check-sat)