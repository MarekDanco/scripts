; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^4 + 2y^3 + 2z^4 + w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x x x)) (* 2 (* y y y)) (* 2 (* z z z z)) (* w w w))))))

(check-sat)