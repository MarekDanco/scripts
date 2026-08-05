; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^2 + 5y^4 + 3z^3 + 2w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x)) (* 5 (* y y y y)) (* 3 (* z z z)) (* 2 w))))))

(check-sat)