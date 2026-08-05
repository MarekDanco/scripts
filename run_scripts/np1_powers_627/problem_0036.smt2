; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x + y^2 + 4z + 4w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 x) (* y y) (* 4 z) (* 4 (* w w w w)))))))

(check-sat)