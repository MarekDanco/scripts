; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^3 + 3y^2 + z^3 + 5w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x x) (* 3 (* y y)) (* z z z) (* 5 w))))))

(check-sat)