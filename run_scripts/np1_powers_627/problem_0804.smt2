; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^2 + 5y^2 + z^2 + 2w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x)) (* 5 (* y y)) (* z z) (* 2 (* w w w w)))))))

(check-sat)