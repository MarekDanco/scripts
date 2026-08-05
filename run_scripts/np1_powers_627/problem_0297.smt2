; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x^4 + 3y^2 + z^2 + w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 (* x x x x)) (* 3 (* y y)) (* z z) w)))))

(check-sat)