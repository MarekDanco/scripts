; NIA Problem: FORALL n. EXISTS x,y,z. n = 5x^3 + 5y^2 + 5z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 5 (* x x x)) (* 5 (* y y)) (* 5 (* z z)))))))

(check-sat)