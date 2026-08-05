; NIA Problem: FORALL n. EXISTS x,y,z. n = 2x^2 + 5y^2 + 2z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 2 (* x x)) (* 5 (* y y)) (* 2 (* z z z)))))))

(check-sat)