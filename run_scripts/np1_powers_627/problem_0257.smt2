; NIA Problem: FORALL n. EXISTS x,y. n = 5x^4 + 2y^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* 5 (* x x x x)) (* 2 (* y y y)))))))

(check-sat)