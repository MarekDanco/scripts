; NIA Problem: FORALL n. EXISTS x,y,z. n = 5x + 3y + 2z^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 5 x) (* 3 y) (* 2 (* z z z z)))))))

(check-sat)