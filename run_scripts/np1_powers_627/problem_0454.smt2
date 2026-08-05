; NIA Problem: FORALL n. EXISTS x,y,z. n = x^4 + 2y^2 + 5z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x x x) (* 2 (* y y)) (* 5 (* z z z)))))))

(check-sat)