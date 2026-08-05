; NIA Problem: FORALL n. EXISTS x,y,z. n = x^3 + 5y^2 + 2z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x x) (* 5 (* y y)) (* 2 (* z z)))))))

(check-sat)