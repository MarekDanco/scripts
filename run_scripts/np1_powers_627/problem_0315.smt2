; NIA Problem: FORALL n. EXISTS x,y,z. n = 2x^2 + 3y^4 + 5z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 2 (* x x)) (* 3 (* y y y y)) (* 5 (* z z z)))))))

(check-sat)