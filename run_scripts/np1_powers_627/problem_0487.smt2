; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^2 + 4y^2 + z^4 + 2w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x)) (* 4 (* y y)) (* z z z z) (* 2 (* w w w)))))))

(check-sat)