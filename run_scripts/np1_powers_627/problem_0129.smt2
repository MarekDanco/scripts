; NIA Problem: FORALL n. EXISTS x,y,z. n = 3x^4 + y^2 + z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 3 (* x x x x)) (* y y) (* z z z))))))

(check-sat)