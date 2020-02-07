(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main8 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (and (<= 0 (+ (+ var0 1000) (- 1))) (<= 0 (+ (+ 1000000 (* (- 1) var0)) (- 1)))) (= (- 50) var1))) (inv_main8 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main8 var2 var1) (and (and (<= 0 (+ (* (- 1) var2) (- 1))) (= (+ var2 var1) var3)) (= (+ var1 1) var0)))) (inv_main8 var3 var0))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main8 var1 var0) (and (not (<= 0 (+ var0 (- 1)))) (not (<= 0 (+ (* (- 1) var1) (- 1)))))))))
(check-sat)
