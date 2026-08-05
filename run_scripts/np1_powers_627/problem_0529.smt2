; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x + 4y^2 + z^2 + 4w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 x) (* 4 (* y y)) (* z z) (* 4 (* w w)))))))

(check-sat)