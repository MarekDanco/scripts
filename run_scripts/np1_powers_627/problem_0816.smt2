; NIA Problem: FORALL n. EXISTS x,y. n = 2x + 5y^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* 2 x) (* 5 (* y y y)))))))

(check-sat)