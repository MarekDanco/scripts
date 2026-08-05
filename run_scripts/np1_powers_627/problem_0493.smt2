; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x^3 + 2y + 3z^2 + 2w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* x x x) (* 2 y) (* 3 (* z z)) (* 2 w))))))

(check-sat)