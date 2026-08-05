; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^3 + 2y^2 + 4z^4 + 3w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x x)) (* 2 (* y y)) (* 4 (* z z z z)) (* 3 w))))))

(check-sat)