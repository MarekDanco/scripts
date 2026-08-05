; NIA Problem: FORALL n. EXISTS x,y,z. n = 3x + y^4 + 3z^2
; Generated FORALL-EXISTS problem

(set-logic NIA)

(assert (forall ((n Int)) (exists ((x Int) (y Int) (z Int)) (= n (+ (* 3 x) (* y y y y) (* 3 (* z z)))))))

(check-sat)