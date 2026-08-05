; NIA Problem: FORALL n. EXISTS x,y. n = 3x^2 + 4y^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int)) (= n (+ (* 3 (* x x)) (* 4 (* y y)))))))

(check-sat)