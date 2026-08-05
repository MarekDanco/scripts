; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^4 + 2y^2 + 2z^2 + w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x x x)) (* 2 (* y y)) (* 2 (* z z)) (* w w w w))))))

(check-sat)