; NIA Problem: FORALL n. EXISTS x,y,z. n = 5x^2 + 4y^2 + 4z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 5 (* x x)) (* 4 (* y y)) (* 4 z))))))

(check-sat)