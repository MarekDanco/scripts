; NIA Problem: FORALL n. EXISTS x,y,z. n = 4x^2 + 2y^2 + 5z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 4 (* x x)) (* 2 (* y y)) (* 5 (* z z z)))))))

(check-sat)