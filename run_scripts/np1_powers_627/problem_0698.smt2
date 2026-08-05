; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^2 + 5y^2 + 2z^2 + w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x)) (* 5 (* y y)) (* 2 (* z z)) (* w w w w))))))

(check-sat)