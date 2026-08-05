; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x + 5y + 2z^3 + 5w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 x) (* 5 y) (* 2 (* z z z)) (* 5 (* w w w)))))))

(check-sat)