; NIA Problem: FORALL n. EXISTS x,y,z. n = x^3 + 3y^3 + z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x x) (* 3 (* y y y)) z)))))

(check-sat)