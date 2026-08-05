; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^2 + 5y^2 + z + 3w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x)) (* 5 (* y y)) z (* 3 w))))))

(check-sat)