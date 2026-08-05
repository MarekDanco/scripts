; NIA Problem: FORALL n. EXISTS x,y,z. n = 4x^2 + 5y^3 + 3z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 4 (* x x)) (* 5 (* y y y)) (* 3 (* z z z)))))))

(check-sat)