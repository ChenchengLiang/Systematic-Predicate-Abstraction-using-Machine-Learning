(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main13 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main3 (Int Int) Bool)
(declare-fun inv_main7 (Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (inv_main3 var0 var1 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main13 var1 var3 var0 var2 var4 var5 ) (not (= var2 0 ) ) ) ) (inv_main13 var1 var3 (+ var0 1 ) var2 var4 var5 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main13 var1 var3 var0 var2 var4 var5 ) (= var2 0 ) ) ) (inv_main7 var1 var3 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main3 var0 var2 ) (and (<= 0 (+ var1 (- 1) ) ) (<= 0 (+ var0 (- 1) ) ) ) ) ) (inv_main13 var0 1 0 var3 var1 4 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main3 var0 var3 ) (and (not (<= 0 (+ var2 (- 1) ) ) ) (<= 0 (+ var0 (- 1) ) ) ) ) ) (inv_main13 var0 1 0 var1 var2 5 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main3 var0 var2 ) (and (<= 0 (+ var1 (- 1) ) ) (not (<= 0 (+ var0 (- 1) ) ) ) ) ) ) (inv_main13 var0 2 0 var3 var1 4 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main3 var0 var3 ) (and (not (<= 0 (+ var1 (- 1) ) ) ) (not (<= 0 (+ var0 (- 1) ) ) ) ) ) ) (inv_main13 var0 2 0 var2 var1 5 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (not (and (inv_main7 var0 var1 ) (= var1 2 ) ) ) ) ) )
(check-sat)
