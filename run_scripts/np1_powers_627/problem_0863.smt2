; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^2 + 3y + z^4 + w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x) (* 3 y) (* z z z z) (* w w w))))))

(check-sat)