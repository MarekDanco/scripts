; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x^2 + y^2 + 4z^4 + 2w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 (* x x)) (* y y) (* 4 (* z z z z)) (* 2 (* w w)))))))

(check-sat)