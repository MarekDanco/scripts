; NIA Problem: FORALL n. EXISTS x,y,z. n = 5x^4 + 4y^3 + 2z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 5 (* x x x x)) (* 4 (* y y y)) (* 2 (* z z)))))))

(check-sat)