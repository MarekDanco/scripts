; NIA Problem: FORALL n. EXISTS x,y,z. n = x^4 + 2y^3 + 4z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x x x) (* 2 (* y y y)) (* 4 (* z z)))))))

(check-sat)