; NIA Problem: FORALL n. EXISTS x,y,z. n = 2x + 3y^2 + z^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 2 x) (* 3 (* y y)) (* z z z z))))))

(check-sat)