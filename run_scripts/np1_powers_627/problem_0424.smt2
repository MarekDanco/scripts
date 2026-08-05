; NIA Problem: FORALL n. EXISTS x,y. n = 3x^3 + 5y
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* 3 (* x x x)) (* 5 y))))))

(check-sat)