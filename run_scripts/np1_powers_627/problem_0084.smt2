; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^2 + 2y^2 + 4z^3 + 2w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x)) (* 2 (* y y)) (* 4 (* z z z)) (* 2 (* w w)))))))

(check-sat)