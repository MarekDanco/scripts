; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x + 3y^2 + 2z^4 + 4w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 x) (* 3 (* y y)) (* 2 (* z z z z)) (* 4 (* w w)))))))

(check-sat)