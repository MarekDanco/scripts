; NIA Problem: FORALL n. EXISTS x,y,z. n = x^3 + 4y^3 + 5z^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x x) (* 4 (* y y y)) (* 5 (* z z z z)))))))

(check-sat)