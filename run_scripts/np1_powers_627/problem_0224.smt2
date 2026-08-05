; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x^2 + 4y^3 + 2z^2 + 2w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 (* x x)) (* 4 (* y y y)) (* 2 (* z z)) (* 2 (* w w)))))))

(check-sat)