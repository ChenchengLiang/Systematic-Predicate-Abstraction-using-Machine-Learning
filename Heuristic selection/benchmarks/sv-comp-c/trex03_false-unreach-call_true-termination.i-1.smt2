(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main15 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main16 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main2 () Bool)
(assert inv_main2 )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (or (not (and (inv_main15 var5 var1 var6 var3 var2 var7 var4 var0 ) (not (and (and (<= 0 (+ var5 (- 1) ) ) (<= 0 (+ var1 (- 1) ) ) ) (<= 0 (+ var6 (- 1) ) ) ) ) ) ) (inv_main16 var5 var1 var6 var3 var2 var7 var4 var0 ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (or (not (and (inv_main15 var6 var1 var7 var3 var2 var8 var5 var0 ) (and (not (= var5 0 ) ) (and (and (<= 0 (+ var6 (- 1) ) ) (<= 0 (+ var1 (- 1) ) ) ) (<= 0 (+ var7 (- 1) ) ) ) ) ) ) (inv_main15 (+ var6 (* (- 1) var3 ) ) var1 var7 var3 var2 var8 var4 var9 ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (or (not (and (inv_main15 var5 var1 var8 var3 var2 var9 var4 var0 ) (and (not (= var0 0 ) ) (and (= var4 0 ) (and (and (<= 0 (+ var5 (- 1) ) ) (<= 0 (+ var1 (- 1) ) ) ) (<= 0 (+ var8 (- 1) ) ) ) ) ) ) ) (inv_main15 var5 (+ var1 (* (- 1) var2 ) ) var8 var3 var2 var9 var7 var6 ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (or (not (and (inv_main15 var5 var1 var7 var3 var2 var9 var4 var0 ) (and (= var0 0 ) (and (= var4 0 ) (and (and (<= 0 (+ var5 (- 1) ) ) (<= 0 (+ var1 (- 1) ) ) ) (<= 0 (+ var7 (- 1) ) ) ) ) ) ) ) (inv_main15 var5 var1 (+ var7 (* (- 1) var9 ) ) var3 var2 var9 var8 var6 ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and inv_main2 (and (and (<= 0 var1 ) (<= 0 var2 ) ) (<= 0 var4 ) ) ) ) (inv_main15 var4 var2 var1 1 1 1 var3 var0 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (not (and (inv_main16 var5 var1 var6 var3 var2 var7 var4 var0 ) (or (or (not (= var5 0 ) ) (not (= var1 0 ) ) ) (not (= var6 0 ) ) ) ) ) ) ) ) ) ) ) ) ) )
(check-sat)