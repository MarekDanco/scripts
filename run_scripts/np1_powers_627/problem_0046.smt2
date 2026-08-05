; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^2 + 3y^2 + 3z^2 + 4w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x) (* 3 (* y y)) (* 3 (* z z)) (* 4 (* w w)))))))

(check-sat)