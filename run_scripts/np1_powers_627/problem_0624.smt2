; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^4 + 4y + 5z^2 + 3w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x x x)) (* 4 y) (* 5 (* z z)) (* 3 (* w w)))))))

(check-sat)