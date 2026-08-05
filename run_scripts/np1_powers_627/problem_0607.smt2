; NIA Problem: FORALL n. EXISTS x,y,z. n = x + y + z
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ x y z)))))

(check-sat)