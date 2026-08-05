; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^4 + y^2 + 2z^4 + 5w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x x x)) (* y y) (* 2 (* z z z z)) (* 5 (* w w w w)))))))

(check-sat)