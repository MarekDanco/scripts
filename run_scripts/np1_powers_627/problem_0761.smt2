; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^4 + 3y^3 + z^4 + 2w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x x x)) (* 3 (* y y y)) (* z z z z) (* 2 (* w w)))))))

(check-sat)