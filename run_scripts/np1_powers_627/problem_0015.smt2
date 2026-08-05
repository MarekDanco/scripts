; NIA Problem: FORALL n. EXISTS x,y,z. n = 5x^4 + y^2 + 3z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 5 (* x x x x)) (* y y) (* 3 (* z z z)))))))

(check-sat)