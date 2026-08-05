; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^3 + 2y^2 + 2z^2 + 2w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x x)) (* 2 (* y y)) (* 2 (* z z)) (* 2 (* w w)))))))

(check-sat)