; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x + 2y^2 + 4z^2 + 2w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ x (* 2 (* y y)) (* 4 (* z z)) (* 2 (* w w w)))))))

(check-sat)