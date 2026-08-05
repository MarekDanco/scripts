; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x^3 + 4y + 3z + 3w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 (* x x x)) (* 4 y) (* 3 z) (* 3 w))))))

(check-sat)