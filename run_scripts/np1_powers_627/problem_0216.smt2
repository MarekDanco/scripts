; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x^3 + 3y + 2z^3 + 5w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 (* x x x)) (* 3 y) (* 2 (* z z z)) (* 5 (* w w w w)))))))

(check-sat)