; NIA Problem: FORALL n. EXISTS x,y. n = x^2 + 5y^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* x x) (* 5 (* y y y)))))))

(check-sat)