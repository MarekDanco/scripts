; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^3 + 2y^2 + 3z^2 + 2w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x x)) (* 2 (* y y)) (* 3 (* z z)) (* 2 (* w w w w)))))))

(check-sat)