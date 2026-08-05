; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^2 + 2y + 4z^2 + w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x)) (* 2 y) (* 4 (* z z)) (* w w w w))))))

(check-sat)