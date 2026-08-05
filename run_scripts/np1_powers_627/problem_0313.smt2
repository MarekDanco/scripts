; NIA Problem: FORALL n. EXISTS x,y,z. n = 3x^2 + y + z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 3 (* x x)) y z)))))

(check-sat)