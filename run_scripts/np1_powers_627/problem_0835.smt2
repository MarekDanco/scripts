; NIA Problem: FORALL n. EXISTS x,y,z. n = 2x^3 + 4y^3 + 5z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 2 (* x x x)) (* 4 (* y y y)) (* 5 z))))))

(check-sat)