; NIA Problem: FORALL n. EXISTS x,y. n = 2x^3 + 2y^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* 2 (* x x x)) (* 2 (* y y y y)))))))

(check-sat)