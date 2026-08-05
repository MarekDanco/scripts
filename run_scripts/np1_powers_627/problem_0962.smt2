; NIA Problem: FORALL n. EXISTS x,y. n = 5x^3 + 3y^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* 5 (* x x x)) (* 3 (* y y)))))))

(check-sat)