; NIA Problem: FORALL n. EXISTS x,y,z. n = x^3 + 3y + 5z^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x x) (* 3 y) (* 5 (* z z z z)))))))

(check-sat)