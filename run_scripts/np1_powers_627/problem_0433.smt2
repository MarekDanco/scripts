; NIA Problem: FORALL n. EXISTS x,y. n = x^2 + 2y
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* x x) (* 2 y))))))

(check-sat)