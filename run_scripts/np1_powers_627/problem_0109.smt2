; NIA Problem: FORALL n. EXISTS x,y,z. n = 5x + y + 4z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 5 x) y (* 4 z))))))

(check-sat)