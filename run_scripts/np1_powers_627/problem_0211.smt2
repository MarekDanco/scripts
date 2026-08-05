; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^3 + y^2 + 5z^3 + 4w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x x)) (* y y) (* 5 (* z z z)) (* 4 (* w w w)))))))

(check-sat)