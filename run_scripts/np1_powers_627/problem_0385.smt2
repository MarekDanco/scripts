; NIA Problem: FORALL n. EXISTS x,y,z. n = 2x^2 + y^2 + 3z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 2 (* x x)) (* y y) (* 3 (* z z)))))))

(check-sat)