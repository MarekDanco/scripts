; NIA Problem: FORALL n. EXISTS x,y,z. n = 5x^3 + 2y^2 + 2z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 5 (* x x x)) (* 2 (* y y)) (* 2 (* z z z)))))))

(check-sat)