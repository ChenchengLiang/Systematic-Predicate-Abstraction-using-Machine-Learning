(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main13 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main27 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main7 (Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (inv_main7 4000 2000 10000 var2 var3 var1 var0 var4 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (or (not (and (inv_main7 var7 var0 var5 var6 var4 var8 var1 var3 ) (and (<= 0 var2 ) (<= 0 (+ (+ 10 (* (- 1) var2 ) ) (- 1) ) ) ) ) ) (inv_main13 var7 var0 var5 var2 var4 0 0 var3 ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (or (not (and (inv_main13 var7 var0 var4 var5 var3 var8 var1 var2 ) (and (= var6 0 ) (and (and (<= 0 var6 ) (<= 0 (+ (+ 2 (* (- 1) var5 ) ) (- 1) ) ) ) (<= 0 (+ (+ var5 (* (- 1) var8 ) ) (- 1) ) ) ) ) ) ) (inv_main13 var7 var0 var4 var5 var6 (+ var8 1 ) (+ var1 var7 ) var2 ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (or (not (and (inv_main13 var7 var0 var4 var5 var3 var8 var1 var2 ) (and (= var6 1 ) (and (not (= var6 0 ) ) (and (and (<= 0 var6 ) (<= 0 (+ (+ 2 (* (- 1) var5 ) ) (- 1) ) ) ) (<= 0 (+ (+ var5 (* (- 1) var8 ) ) (- 1) ) ) ) ) ) ) ) (inv_main13 var7 var0 var4 var5 var6 (+ var8 1 ) (+ var1 var0 ) var2 ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (or (not (and (inv_main13 var7 var0 var4 var5 var3 var8 var1 var2 ) (and (not (= var6 1 ) ) (and (not (= var6 0 ) ) (and (and (<= 0 var6 ) (<= 0 (+ (+ 2 (* (- 1) var5 ) ) (- 1) ) ) ) (<= 0 (+ (+ var5 (* (- 1) var8 ) ) (- 1) ) ) ) ) ) ) ) (inv_main13 var7 var0 var4 var5 var6 (+ var8 1 ) (+ var1 var4 ) var2 ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (or (not (and (inv_main13 var6 var0 var4 var5 var3 var7 var1 var2 ) (and (<= 0 (+ var5 (- 1) ) ) (not (<= 0 (+ (+ var5 (* (- 1) var7 ) ) (- 1) ) ) ) ) ) ) (inv_main27 var6 var0 var4 var5 var3 var7 var1 0 ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (or (not (and (inv_main27 var6 var0 var4 var5 var3 var7 var1 var2 ) (<= 0 (+ (+ var5 (* (- 1) (+ var2 1 ) ) ) (- 1) ) ) ) ) (inv_main27 var6 var0 var4 var5 var3 var7 (+ var1 (- 1) ) (+ var2 1 ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (not (and (inv_main27 var6 var0 var4 var5 var3 var7 var1 var2 ) (not (<= 0 (+ var1 (- 1) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(check-sat)
