; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 3x^4 + 5y + 2z^2 + 3w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 3 (* x x x x)) (* 5 y) (* 2 (* z z)) (* 3 (* w w)))))))

(check-sat)