; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^4 + 3y^4 + 4z^2 + 4w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x x x)) (* 3 (* y y y y)) (* 4 (* z z)) (* 4 w))))))

(check-sat)