(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main5 (Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (= 2 var1) (= 0 var2))) (inv_main5 var0 var1 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main5 var3 var2 var0) (and (and (not (= var3 0)) (not (= var4 0))) (= (+ var2 4) var1)))) (inv_main5 var3 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main5 0 var2 var0) (and (and (and (not (= var5 0)) (= var3 0)) (= (+ var2 2) var4)) (= (+ var0 1) var1)))) (inv_main5 var3 var4 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main5 var2 var1 var0) (and (not (= var1 (+ (* 2 var0) 2))) (not (= var0 0)))))))
(check-sat)
