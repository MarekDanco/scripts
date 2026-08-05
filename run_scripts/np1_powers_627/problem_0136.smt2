; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x + 3y^2 + 2z + 2w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ x (* 3 (* y y)) (* 2 z) (* 2 w))))))

(check-sat)