; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^2 + 2y^2 + 3z^3 + 2w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x) (* 2 (* y y)) (* 3 (* z z z)) (* 2 w))))))

(check-sat)