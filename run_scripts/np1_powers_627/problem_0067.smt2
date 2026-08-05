; NIA Problem: FORALL n. EXISTS x,y,z. n = x^4 + 5y^2 + 4z^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x x x) (* 5 (* y y)) (* 4 (* z z z z)))))))

(check-sat)