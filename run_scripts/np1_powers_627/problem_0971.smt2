; NIA Problem: FORALL n. EXISTS x,y,z. n = 3x^2 + 4y^4 + 4z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 3 (* x x)) (* 4 (* y y y y)) (* 4 (* z z z)))))))

(check-sat)