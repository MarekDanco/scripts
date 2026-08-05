; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^2 + 3y^4 + 3z + 2w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x)) (* 3 (* y y y y)) (* 3 z) (* 2 (* w w)))))))

(check-sat)