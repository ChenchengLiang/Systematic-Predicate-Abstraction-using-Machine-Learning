(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main6 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (<= 0 var1) (<= 0 var0))) (or (not (and (inv_main6 var0 var2) (and (<= 0 (+ (+ var2 (* (- 1) var0)) (- 1))) (= (+ var0 2) var1)))) (inv_main6 var1 var2)))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (<= 0 var0)) (or (not (and (<= 0 var1) (= 0 var0))) (inv_main6 var0 var1)))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main6 (+ (* 2 var1) 1) var0) (and (<= 0 (+ 1 (+ (* (- 1) var0) (* 2 var1)))) (<= 0 var1))))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main6 (+ (* 2 var1) (- 1)) var0) (and (<= 0 (+ (- 1) (+ (* (- 1) var0) (* 2 var1)))) (<= 0 (* (- 1) var1)))))))
(check-sat)
