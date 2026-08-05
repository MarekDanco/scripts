; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x + 5y + 3z^4 + 2w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 x) (* 5 y) (* 3 (* z z z z)) (* 2 (* w w w w)))))))

(check-sat)