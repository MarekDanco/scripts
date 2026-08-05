; NIA Problem: FORALL n. EXISTS x,y,z. n = 3x^2 + y^4 + z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 3 (* x x)) (* y y y y) (* z z z))))))

(check-sat)