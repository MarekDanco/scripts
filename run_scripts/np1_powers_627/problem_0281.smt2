; NIA Problem: FORALL n. EXISTS x,y. n = 2x^4 + y^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* 2 (* x x x x)) (* y y))))))

(check-sat)