; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^4 + 4y^2 + 2z^3 + 2w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x x x)) (* 4 (* y y)) (* 2 (* z z z)) (* 2 (* w w)))))))

(check-sat)