; NIA Problem: FORALL n. EXISTS x,y,z. n = 2x^3 + 3y^2 + 2z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 2 (* x x x)) (* 3 (* y y)) (* 2 z))))))

(check-sat)