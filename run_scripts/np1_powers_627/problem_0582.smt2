; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x + 2y^2 + z^2 + 3w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 x) (* 2 (* y y)) (* z z) (* 3 (* w w)))))))

(check-sat)