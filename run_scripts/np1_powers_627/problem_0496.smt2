; NIA Problem: FORALL n. EXISTS x,y,z. n = x^2 + y^3 + 5z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x) (* y y y) (* 5 (* z z z)))))))

(check-sat)