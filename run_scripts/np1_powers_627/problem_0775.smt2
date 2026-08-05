; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^3 + y + 3z^3 + 5w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x x)) y (* 3 (* z z z)) (* 5 w))))))

(check-sat)