(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main10 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main25 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main34 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main41 (Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (inv_main10 0 0 var0 var4 var7 var6 var3 var2 var5 var1 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (or (not (and (inv_main10 var7 var0 var5 var4 var6 var3 var9 var2 var8 var1 ) (<= 0 (+ var0 (- 1) ) ) ) ) (inv_main25 var7 var0 0 0 (+ (+ var0 1 ) (- 1) ) 0 0 (+ (+ var0 1 ) (- 1) ) 0 0 ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (or (not (and (inv_main25 var7 var0 var5 var4 var6 var3 var9 var2 var8 var1 ) (and (not (<= 0 (+ var1 1 ) ) ) (not (<= 0 (+ (+ var9 var1 ) (* (- 1) var2 ) ) ) ) ) ) ) (inv_main34 var7 var0 var5 var4 var6 var3 var9 var2 var8 (+ var1 1 ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (or (not (and (inv_main25 var7 var0 var5 var4 var6 var3 var9 var2 var8 var1 ) (and (not (<= 0 (+ (+ (+ var0 1 ) (* (- 1) (+ var1 1 ) ) ) (- 1) ) ) ) (and (<= 0 (+ var1 1 ) ) (not (<= 0 (+ (+ var9 var1 ) (* (- 1) var2 ) ) ) ) ) ) ) ) (inv_main41 var7 var0 var5 var4 var6 var3 var9 var2 var8 (+ var1 1 ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (or (not (and (inv_main34 var7 var0 var5 var4 var6 var3 var9 var2 var8 var1 ) (not (<= 0 (+ (+ (+ var0 1 ) (* (- 1) var1 ) ) (- 1) ) ) ) ) ) (inv_main41 var7 var0 var5 var4 var6 var3 var9 var2 var8 var1 ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (or (not (and (inv_main41 var8 var0 var6 var5 var7 var4 var10 var2 var9 var1 ) (= var3 0 ) ) ) (inv_main25 var8 var0 var6 var5 var7 var4 var10 var2 var9 var1 ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (or (not (and (inv_main25 var8 var0 var5 var4 var6 var3 var10 var2 var9 var1 ) (and (= var7 0 ) (and (<= 0 (+ (+ (+ var0 1 ) (* (- 1) (+ var1 1 ) ) ) (- 1) ) ) (and (<= 0 (+ var1 1 ) ) (not (<= 0 (+ (+ var10 var1 ) (* (- 1) var2 ) ) ) ) ) ) ) ) ) (inv_main25 var8 var0 var5 var4 var6 var3 var10 var2 var9 (+ var1 1 ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (or (not (and (inv_main34 var7 var0 var5 var4 var6 var3 var10 var2 var9 var1 ) (and (= var8 0 ) (<= 0 (+ (+ (+ var0 1 ) (* (- 1) var1 ) ) (- 1) ) ) ) ) ) (inv_main25 var7 var0 var5 var4 var6 var3 var10 var2 var9 var1 ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (not (inv_main34 var7 var0 var5 var4 var6 var3 var9 var2 var8 var1 ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (not (inv_main41 var7 var0 var5 var4 var6 var3 var9 var2 var8 var1 ) ) ) ) ) ) ) ) ) ) ) ) )
(check-sat)
