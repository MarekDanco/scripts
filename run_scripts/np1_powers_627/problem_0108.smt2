; NIA Problem: FORALL n. EXISTS x,y,z. n = 5x^4 + y^2 + 2z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 5 (* x x x x)) (* y y) (* 2 z))))))

(check-sat)