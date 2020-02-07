(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main20 (Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (and (and (<= 0 (+ var3 (* (- 1) var0))) (<= 0 var0)) (<= 0 (+ 100 (* (- 1) var3)))) (<= 0 var3)) (= 0 var2)) (= var1 var0))) (inv_main20 var1 var2 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main20 var0 var1 var3) (and (and (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1))) (= (+ var0 1) var4)) (= (+ var1 1) var2)))) (inv_main20 var4 var2 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main20 var0 var1 var2) (and (not (<= 0 (+ 100 (* (- 1) var1)))) (not (<= 0 (+ (+ var2 (* (- 1) var0)) (- 1)))))))))
(check-sat)
