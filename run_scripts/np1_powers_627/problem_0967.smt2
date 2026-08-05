; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 5x^4 + 3y^2 + 3z + 2w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 5 (* x x x x)) (* 3 (* y y)) (* 3 z) (* 2 w))))))

(check-sat)