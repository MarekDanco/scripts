; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^2 + y^2 + 2z + 2w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x)) (* y y) (* 2 z) (* 2 (* w w)))))))

(check-sat)