; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^3 + y^2 + 3z^4 + 2w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x x) (* y y) (* 3 (* z z z z)) (* 2 (* w w)))))))

(check-sat)