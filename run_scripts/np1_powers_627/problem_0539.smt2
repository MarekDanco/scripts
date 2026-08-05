; NIA Problem: FORALL n. EXISTS x,y. n = x^3 + 5y^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* x x x) (* 5 (* y y)))))))

(check-sat)