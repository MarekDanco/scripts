; NIA Problem: FORALL n. EXISTS x,y,z. n = 5x^3 + 4y^3 + 3z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 5 (* x x x)) (* 4 (* y y y)) (* 3 z))))))

(check-sat)