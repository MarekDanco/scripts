; NIA Problem: FORALL n. EXISTS x,y. n = x^3 + 3y^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* x x x) (* 3 (* y y y)))))))

(check-sat)