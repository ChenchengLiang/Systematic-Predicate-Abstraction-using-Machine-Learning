(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main18 (Int Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int) Bool)
(declare-fun inv_main7 (Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (inv_main5 var1 var0 0 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main5 var2 var0 var1 ) (not (= var2 var0 ) ) ) ) (inv_main7 var2 var0 var1 var0 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main7 var3 var0 var1 var4 ) (and (<= 0 (+ var3 (- 1) ) ) (not (= var2 0 ) ) ) ) ) (inv_main7 var3 (+ var0 var3 ) var1 var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main7 var3 var0 var1 var4 ) (and (not (<= 0 (+ var3 (- 1) ) ) ) (not (= var2 0 ) ) ) ) ) (inv_main7 var3 var0 var1 var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main7 var3 var1 var2 var4 ) (and (not (<= 0 (+ var1 (* (- 1) var4 ) ) ) ) (= var0 0 ) ) ) ) (inv_main18 var3 var1 var2 var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (not (inv_main18 var2 var0 var1 var3 ) ) ) ) ) ) )
(check-sat)