; NIA Problem: FORALL n. EXISTS x,y,z. n = x^3 + 2y^3 + z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x x) (* 2 (* y y y)) (* z z z))))))

(check-sat)