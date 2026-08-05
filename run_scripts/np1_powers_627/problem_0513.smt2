; NIA Problem: FORALL n. EXISTS x,y,z. n = 3x^3 + 3y^2 + 4z^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 3 (* x x x)) (* 3 (* y y)) (* 4 (* z z z z)))))))

(check-sat)