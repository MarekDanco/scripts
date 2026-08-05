; NIA Problem: FORALL n. EXISTS x,y,z. n = 3x^3 + 3y^2 + z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 3 (* x x x)) (* 3 (* y y)) (* z z))))))

(check-sat)