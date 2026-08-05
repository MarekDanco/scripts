; NIA Problem: FORALL n. EXISTS x,y,z. n = 2x^2 + 5y^3 + 2z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 2 (* x x)) (* 5 (* y y y)) (* 2 (* z z)))))))

(check-sat)