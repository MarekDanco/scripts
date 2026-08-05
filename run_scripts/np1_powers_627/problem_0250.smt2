; NIA Problem: FORALL n. EXISTS x,y. n = 4x^4 + 2y^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* 4 (* x x x x)) (* 2 (* y y y y)))))))

(check-sat)