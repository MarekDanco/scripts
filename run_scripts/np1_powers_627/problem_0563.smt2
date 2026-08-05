; NIA Problem: FORALL n. EXISTS x,y,z. n = x^3 + y^3 + 3z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x x) (* y y y) (* 3 (* z z z)))))))

(check-sat)