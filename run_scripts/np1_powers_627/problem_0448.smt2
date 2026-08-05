; NIA Problem: FORALL n. EXISTS x,y,z. n = 3x + 2y^2 + 3z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 3 x) (* 2 (* y y)) (* 3 z))))))

(check-sat)