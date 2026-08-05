; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^3 + 4y^2 + z^2 + 2w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x x) (* 4 (* y y)) (* z z) (* 2 (* w w)))))))

(check-sat)