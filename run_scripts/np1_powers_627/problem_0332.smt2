; NIA Problem: FORALL n. EXISTS x,y,z. n = 4x^2 + 4y + 2z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 4 (* x x)) (* 4 y) (* 2 (* z z z)))))))

(check-sat)