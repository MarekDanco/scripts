; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^2 + 4y^3 + 3z^3 + 4w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x)) (* 4 (* y y y)) (* 3 (* z z z)) (* 4 (* w w w)))))))

(check-sat)