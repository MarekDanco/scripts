; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^2 + y + z^3 + 2w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x)) y (* z z z) (* 2 w))))))

(check-sat)