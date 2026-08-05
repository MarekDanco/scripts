; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x + 2y + z^2 + 2w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 x) (* 2 y) (* z z) (* 2 (* w w w)))))))

(check-sat)