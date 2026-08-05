; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^4 + 5y^2 + 2z + 5w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x x x) (* 5 (* y y)) (* 2 z) (* 5 w))))))

(check-sat)