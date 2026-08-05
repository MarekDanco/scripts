; NIA Problem: FORALL n. EXISTS x,y,z. n = 3x^4 + 4y^2 + 2z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 3 (* x x x x)) (* 4 (* y y)) (* 2 z))))))

(check-sat)