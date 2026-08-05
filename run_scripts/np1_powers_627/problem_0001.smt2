; NIA Problem: FORALL n. EXISTS x,y,z. n = x + 5y^3 + 2z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ x (* 5 (* y y y)) (* 2 (* z z z)))))))

(check-sat)