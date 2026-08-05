; NIA Problem: FORALL n. EXISTS x,y,z. n = 4x^4 + 5y^4 + 3z^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 4 (* x x x x)) (* 5 (* y y y y)) (* 3 (* z z z z)))))))

(check-sat)