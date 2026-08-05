; NIA Problem: FORALL n. EXISTS x,y,z. n = 2x^4 + y^2 + 4z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 2 (* x x x x)) (* y y) (* 4 (* z z z)))))))

(check-sat)