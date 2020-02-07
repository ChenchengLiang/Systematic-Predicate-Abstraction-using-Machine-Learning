(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main5 (Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (= 0 var0) (= (+ var2 1) var1))) (inv_main5 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main5 var2 var3 var0) (and (and (not (= var0 var3)) (= 1 var4)) (= var1 var0)))) (inv_main5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main5 var1 var3 var0) (and (and (and (not (= var5 0)) (not (= var0 var3))) (= 0 var4)) (= (+ var0 1) var2)))) (inv_main5 var4 var0 var2))))
(assert (forall ((var0 Int)) (not (inv_main5 0 var0 var0))))
(check-sat)
