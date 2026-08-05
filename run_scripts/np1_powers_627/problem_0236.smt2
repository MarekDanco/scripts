; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x^4 + 3y^4 + z^2 + 2w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 (* x x x x)) (* 3 (* y y y y)) (* z z) (* 2 (* w w w)))))))

(check-sat)