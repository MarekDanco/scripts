; NIA Problem: FORALL n. EXISTS x,y,z. n = 2x^4 + 3y^4 + z^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 2 (* x x x x)) (* 3 (* y y y y)) (* z z z))))))

(check-sat)