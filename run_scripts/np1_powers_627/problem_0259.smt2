; NIA Problem: FORALL n. EXISTS x,y. n = 4x^3 + y^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* 4 (* x x x)) (* y y y))))))

(check-sat)