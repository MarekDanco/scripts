; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^4 + 3y + 3z^2 + 3w^3
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x x x)) (* 3 y) (* 3 (* z z)) (* 3 (* w w w)))))))

(check-sat)