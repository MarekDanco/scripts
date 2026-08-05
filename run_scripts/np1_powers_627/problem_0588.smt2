; NIA Problem: FORALL n. EXISTS x,y,z. n = 4x^3 + y^4 + 3z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 4 (* x x x)) (* y y y y) (* 3 (* z z z)))))))

(check-sat)