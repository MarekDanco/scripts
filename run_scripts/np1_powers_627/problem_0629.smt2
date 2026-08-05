; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x + 3y + 3z^3 + w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 x) (* 3 y) (* 3 (* z z z)) (* w w))))))

(check-sat)