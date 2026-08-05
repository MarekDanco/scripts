; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^2 + 4y^3 + 4z^3 + 2w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x)) (* 4 (* y y y)) (* 4 (* z z z)) (* 2 (* w w w)))))))

(check-sat)