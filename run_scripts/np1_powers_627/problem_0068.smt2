; NIA Problem: FORALL n. EXISTS x,y,z. n = 3x^3 + 4y^2 + 3z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 3 (* x x x)) (* 4 (* y y)) (* 3 (* z z z)))))))

(check-sat)