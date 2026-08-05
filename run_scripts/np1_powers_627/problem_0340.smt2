; NIA Problem: FORALL n. EXISTS x,y,z,w. n = x + y^2 + z^4 + 4w^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ x (* y y) (* z z z z) (* 4 (* w w)))))))

(check-sat)