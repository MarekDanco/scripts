; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^4 + 3y^3 + 4z^2 + 2w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x x x) (* 3 (* y y y)) (* 4 (* z z)) (* 2 (* w w w w)))))))

(check-sat)