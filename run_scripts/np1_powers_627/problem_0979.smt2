; NIA Problem: FORALL n. EXISTS x,y,z,w. n = 2x^3 + y^2 + 2z^4 + w
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int) (w Int)) (= n (+ (* 2 (* x x x)) (* y y) (* 2 (* z z z z)) w)))))

(check-sat)