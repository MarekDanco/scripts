; NIA Problem: FORALL n. EXISTS x,y. n = x + y^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ x (* y y))))))

(check-sat)