; NIA Problem: FORALL n. EXISTS x,y,z. n = 4x^3 + 2y^3 + 3z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 4 (* x x x)) (* 2 (* y y y)) (* 3 z))))))

(check-sat)