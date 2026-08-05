; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^2 + 4y^4 + 2z + 3w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x)) (* 4 (* y y y y)) (* 2 z) (* 3 (* w w)))))))

(check-sat)