; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^3 + 4y^4 + 2z^4 + w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x x) (* 4 (* y y y y)) (* 2 (* z z z z)) (* w w))))))

(check-sat)