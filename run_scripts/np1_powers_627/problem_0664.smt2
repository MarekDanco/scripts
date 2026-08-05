; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^4 + 4y^2 + 2z^3 + 4w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x x x)) (* 4 (* y y)) (* 2 (* z z z)) (* 4 (* w w w w)))))))

(check-sat)