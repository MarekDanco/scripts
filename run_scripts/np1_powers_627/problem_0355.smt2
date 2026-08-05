; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x + 3y^4 + z^2 + 3w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 x) (* 3 (* y y y y)) (* z z) (* 3 w))))))

(check-sat)