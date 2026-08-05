; NIA Problem: FORALL n. EXISTS x,y,z. n = 3x^2 + 3y^2 + 2z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 3 (* x x)) (* 3 (* y y)) (* 2 (* z z)))))))

(check-sat)