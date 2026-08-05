; NIA Problem: FORALL n. EXISTS x,y. n = x^2 + 3y^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* x x) (* 3 (* y y)))))))

(check-sat)