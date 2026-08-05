; NIA Problem: FORALL n. EXISTS x,y,z. n = x^4 + 3y + 2z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x x x) (* 3 y) (* 2 (* z z z)))))))

(check-sat)