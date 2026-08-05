; NIA Problem: FORALL n. EXISTS x,y,z. n = 4x^4 + 5y^2 + 3z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 4 (* x x x x)) (* 5 (* y y)) (* 3 (* z z)))))))

(check-sat)