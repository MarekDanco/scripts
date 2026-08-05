; NIA Problem: FORALL n. EXISTS x,y,z. n = 5x^3 + 3y + 3z^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 5 (* x x x)) (* 3 y) (* 3 (* z z z z)))))))

(check-sat)