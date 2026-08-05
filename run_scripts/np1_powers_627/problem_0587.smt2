; NIA Problem: FORALL n. EXISTS x,y,z. n = 4x^3 + 4y + 4z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 4 (* x x x)) (* 4 y) (* 4 z))))))

(check-sat)