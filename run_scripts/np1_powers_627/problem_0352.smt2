; NIA Problem: FORALL n. EXISTS x,y,z. n = x^2 + 3y^4 + 2z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x) (* 3 (* y y y y)) (* 2 (* z z)))))))

(check-sat)