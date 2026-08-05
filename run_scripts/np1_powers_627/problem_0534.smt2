; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^2 + 2y^3 + 3z + 4w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x)) (* 2 (* y y y)) (* 3 z) (* 4 (* w w)))))))

(check-sat)