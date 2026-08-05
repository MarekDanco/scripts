; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x + 4y^2 + 2z^2 + 5w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 x) (* 4 (* y y)) (* 2 (* z z)) (* 5 w))))))

(check-sat)