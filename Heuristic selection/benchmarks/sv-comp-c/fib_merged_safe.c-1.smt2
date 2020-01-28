(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main15 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main7 (Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (inv_main7 var0 0 1 1 1 0 0 ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (inv_main15 var5 var1 var0 var4 var3 var2 var6 ) ) (inv_main7 var5 var1 var0 var4 var3 var2 var6 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main7 var5 var1 var0 var4 var3 var2 var6 ) (<= 0 (+ var5 (- 1) ) ) ) ) (inv_main15 (+ var5 (- 1) ) var4 var3 (+ var1 var4 ) (+ var0 var3 ) (+ var1 var4 ) (+ var0 var3 ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (not (and (inv_main15 var5 var1 var0 var4 var3 var2 var6 ) (not (= var6 (+ var2 var1 ) ) ) ) ) ) ) ) ) ) ) ) )
(check-sat)
