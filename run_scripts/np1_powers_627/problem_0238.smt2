; NIA Problem: FORALL n. EXISTS x,y,z. n = x^3 + 5y^3 + z^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x x) (* 5 (* y y y)) (* z z z z))))))

(check-sat)