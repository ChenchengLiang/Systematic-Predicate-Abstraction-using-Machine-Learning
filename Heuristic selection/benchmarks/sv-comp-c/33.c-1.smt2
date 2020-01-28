(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main11 (Int Int Int Int Int) Bool)
(declare-fun inv_main12 (Int Int Int Int Int) Bool)
(declare-fun inv_main29 (Int Int Int Int) Bool)
(declare-fun inv_main3 (Int) Bool)
(assert (forall ((var0 Int)) (inv_main3 var0 ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main11 var1 var0 var2 var3 var4 ) (= var5 0 ) ) ) (inv_main12 var1 var0 var2 var3 var4 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main11 var1 var0 var2 var4 var5 ) (and (= var0 (+ (+ var1 var4 ) (* (- 1) var5 ) ) ) (not (= var3 0 ) ) ) ) ) (inv_main11 var1 var0 (+ var2 1 ) (+ var4 1 ) (+ var5 1 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main11 var1 var0 var2 var4 var5 ) (and (not (= var0 (+ (+ var1 var4 ) (* (- 1) var5 ) ) ) ) (not (= var3 0 ) ) ) ) ) (inv_main11 var1 var0 (+ var2 1 ) (+ var4 (- 1) ) (+ var5 1 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main12 var1 var0 var2 var3 var4 ) (not (= var5 0 ) ) ) ) (inv_main12 var1 var0 (+ var2 (- 1) ) (+ var3 (- 1) ) var4 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main12 var1 var0 var3 var4 var5 ) (and (not (= var2 0 ) ) (= var6 0 ) ) ) ) (inv_main11 var1 (+ var1 var4 ) var3 var4 0 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main12 var1 var0 var2 var4 var5 ) (and (and (not (= var2 var4 ) ) (= var3 0 ) ) (= var6 0 ) ) ) ) (inv_main29 var1 (+ var1 var4 ) var2 var4 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (and (inv_main3 var1 ) (not (= var0 0 ) ) ) ) (inv_main11 var1 var1 0 0 0 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (not (inv_main29 var1 var0 var2 var3 ) ) ) ) ) ) )
(check-sat)
