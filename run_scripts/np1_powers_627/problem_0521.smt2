; NIA Problem: FORALL n. EXISTS x,y,z. n = 2x^2 + 4y^3 + 2z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 2 (* x x)) (* 4 (* y y y)) (* 2 (* z z z)))))))

(check-sat)