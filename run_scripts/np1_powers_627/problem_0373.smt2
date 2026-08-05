; NIA Problem: FORALL n. EXISTS x,y,z. n = 4x^3 + 3y^4 + z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 4 (* x x x)) (* 3 (* y y y y)) z)))))

(check-sat)