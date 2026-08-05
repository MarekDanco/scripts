; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^2 + y^2 + 3z + 3w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x)) (* y y) (* 3 z) (* 3 (* w w)))))))

(check-sat)