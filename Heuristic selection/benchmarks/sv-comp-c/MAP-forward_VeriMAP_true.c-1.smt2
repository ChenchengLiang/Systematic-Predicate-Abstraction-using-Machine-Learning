(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int Int Int Int Int) Bool)
(declare-fun inv_main7 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (inv_main3 var3 var4 var2 var0 var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main3 var4 var3 var0 var1 var2 ) (<= 0 var0 ) ) ) (inv_main7 var4 0 var0 0 0 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main7 var5 var4 var1 var2 var3 ) (and (not (= var0 0 ) ) (<= 0 (+ (+ var1 (* (- 1) var4 ) ) (- 1) ) ) ) ) ) (inv_main7 var5 (+ var4 1 ) var1 (+ var2 1 ) (+ var3 2 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main7 var5 var4 var0 var1 var2 ) (and (= var3 0 ) (<= 0 (+ (+ var0 (* (- 1) var4 ) ) (- 1) ) ) ) ) ) (inv_main7 var5 (+ var4 1 ) var0 (+ var1 2 ) (+ var2 1 ) ) ) ) ) ) ) ) ) )
(check-sat)
