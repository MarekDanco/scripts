; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^3 + 4y^4 + 3z^2 + 4w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x x)) (* 4 (* y y y y)) (* 3 (* z z)) (* 4 (* w w w)))))))

(check-sat)