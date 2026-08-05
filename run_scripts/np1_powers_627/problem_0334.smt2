; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x + 2y + 3z^2 + 4w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 x) (* 2 y) (* 3 (* z z)) (* 4 (* w w w)))))))

(check-sat)