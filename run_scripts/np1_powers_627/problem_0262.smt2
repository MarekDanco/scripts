; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^4 + 2y^3 + 2z^2 + 2w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x x x) (* 2 (* y y y)) (* 2 (* z z)) (* 2 (* w w w)))))))

(check-sat)