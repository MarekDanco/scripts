; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^2 + 2y^3 + 5z^3 + w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x)) (* 2 (* y y y)) (* 5 (* z z z)) w)))))

(check-sat)