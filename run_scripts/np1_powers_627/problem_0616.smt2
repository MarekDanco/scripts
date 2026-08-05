; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^2 + 3y^3 + 2z + w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x)) (* 3 (* y y y)) (* 2 z) (* w w))))))

(check-sat)