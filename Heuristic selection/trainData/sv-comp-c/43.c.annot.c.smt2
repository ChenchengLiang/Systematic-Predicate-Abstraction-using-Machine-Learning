(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main7 (Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (not (= var1 var0)) (= var3 var0)) (= 0 var2))) (inv_main7 var1 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main7 var0 var5 var2) (and (and (and (<= 0 (+ var0 (- 1))) (not (= var4 0))) (= (+ var5 var0) var3)) (= var1 0)))) (inv_main7 var0 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main7 var0 var4 var2) (and (and (not (<= 0 (+ var0 (- 1)))) (not (= var3 0))) (= var1 0)))) (inv_main7 var0 var4 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main7 var0 var2 var1) (not (<= 0 (+ var2 (* (- 1) var1))))))))
(check-sat)
