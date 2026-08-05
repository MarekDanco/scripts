; NIA Problem: FORALL n. EXISTS x,y. n = 4x^2 + y^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* 4 (* x x)) (* y y))))))

(check-sat)