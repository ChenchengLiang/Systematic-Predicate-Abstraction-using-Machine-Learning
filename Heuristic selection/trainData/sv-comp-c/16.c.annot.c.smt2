(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main6 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main6 var5 var4 var3 var0) (and (and (not (= var3 0)) (= (+ var3 (- 1)) var1)) (= (+ var0 (- 1)) var2)))) (inv_main6 var5 var4 var1 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (= var3 var1) (= var2 var0))) (inv_main6 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main6 var1 var1 0 var0) (not (= var0 0))))))
(check-sat)
