; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x^4 + 5y^2 + 2z^2 + w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 (* x x x x)) (* 5 (* y y)) (* 2 (* z z)) (* w w))))))

(check-sat)