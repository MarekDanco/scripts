; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x^4 + 2y + z^4 + w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 (* x x x x)) (* 2 y) (* z z z z) (* w w w))))))

(check-sat)