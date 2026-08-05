; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x^3 + 2y^4 + 3z + 2w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 (* x x x)) (* 2 (* y y y y)) (* 3 z) (* 2 (* w w w)))))))

(check-sat)