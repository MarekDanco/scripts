; NIA Problem: FORALL n. EXISTS x,y,z. n = 4x^4 + y^2 + 4z^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 4 (* x x x x)) (* y y) (* 4 (* z z z z)))))))

(check-sat)