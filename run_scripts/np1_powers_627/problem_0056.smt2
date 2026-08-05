; NIA Problem: FORALL n. EXISTS x,y,z. n = 2x^4 + 2y + z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 2 (* x x x x)) (* 2 y) (* z z))))))

(check-sat)