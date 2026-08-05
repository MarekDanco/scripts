; NIA Problem: FORALL n. EXISTS x,y,z. n = x^2 + 2y^4 + 3z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* x x) (* 2 (* y y y y)) (* 3 (* z z)))))))

(check-sat)