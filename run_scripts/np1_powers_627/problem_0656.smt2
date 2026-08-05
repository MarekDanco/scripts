; NIA Problem: FORALL n. EXISTS x,y,z. n = 2x + 5y^2 + z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 2 x) (* 5 (* y y)) (* z z z))))))

(check-sat)