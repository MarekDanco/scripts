; NIA Problem: FORALL n. EXISTS x,y,z. n = x^4 + y^4 + 2z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x x x) (* y y y y) (* 2 (* z z)))))))

(check-sat)