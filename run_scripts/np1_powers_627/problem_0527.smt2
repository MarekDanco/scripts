; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 4x^4 + y + 3z + 4w^4
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 4 (* x x x x)) y (* 3 z) (* 4 (* w w w w)))))))

(check-sat)