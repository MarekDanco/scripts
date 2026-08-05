; NIA Problem: FORALL n. EXISTS x,y,z. n = 4x + 3y^3 + 4z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 4 x) (* 3 (* y y y)) (* 4 z))))))

(check-sat)