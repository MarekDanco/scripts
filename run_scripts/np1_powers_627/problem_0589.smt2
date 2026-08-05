; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x + y + z^2 + 2w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 x) y (* z z) (* 2 w))))))

(check-sat)