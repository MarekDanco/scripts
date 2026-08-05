; NIA Problem: FORALL n. EXISTS x,y,z. n = 3x^4 + 3y^3 + 2z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 3 (* x x x x)) (* 3 (* y y y)) (* 2 z))))))

(check-sat)