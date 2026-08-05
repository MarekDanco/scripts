; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^2 + y^2 + 2z + w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x) (* y y) (* 2 z) (* w w w))))))

(check-sat)