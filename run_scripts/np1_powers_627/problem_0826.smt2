; NIA Problem: FORALL n. EXISTS x,y,z. n = 2x^2 + 3y^4 + z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 2 (* x x)) (* 3 (* y y y y)) (* z z))))))

(check-sat)