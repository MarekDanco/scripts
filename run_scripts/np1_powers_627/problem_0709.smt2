; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^4 + y + 2z^2 + w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x x x)) y (* 2 (* z z)) (* w w w w))))))

(check-sat)