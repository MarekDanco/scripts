; NIA Problem: FORALL n. EXISTS x,y,z. n = 3x^2 + 2y^4 + 2z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 3 (* x x)) (* 2 (* y y y y)) (* 2 (* z z z)))))))

(check-sat)