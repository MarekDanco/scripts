; NIA Problem: FORALL n. EXISTS x,y,z. n = x^2 + y + 2z^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x) y (* 2 (* z z z z)))))))

(check-sat)