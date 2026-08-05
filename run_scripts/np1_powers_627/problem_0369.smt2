; NIA Problem: FORALL n. EXISTS x,y,z. n = x^2 + 3y^2 + z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x) (* 3 (* y y)) z)))))

(check-sat)