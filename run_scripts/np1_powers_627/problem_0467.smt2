; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^4 + y^3 + 5z^3 + 3w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x x x)) (* y y y) (* 5 (* z z z)) (* 3 (* w w)))))))

(check-sat)