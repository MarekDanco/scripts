; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^2 + y^3 + 2z^3 + 4w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x) (* y y y) (* 2 (* z z z)) (* 4 (* w w)))))))

(check-sat)