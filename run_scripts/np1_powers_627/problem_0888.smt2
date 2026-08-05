; NIA Problem: FORALL n. EXISTS x,y,z. n = 5x + 3y^3 + 4z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 5 x) (* 3 (* y y y)) (* 4 (* z z z)))))))

(check-sat)