(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main29 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main32 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main64 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main65 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main66 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main67 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main68 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main69 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main70 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main71 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main9 (Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (inv_main9 var3 var6 var5 var2 var1 var4 var0 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (inv_main32 var5 var4 var3 var2 var1 var0 var6 ) ) (inv_main64 var5 var4 var3 var2 var1 var0 var6 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (inv_main64 var5 var4 var3 var2 var1 var0 var6 ) ) (inv_main65 var5 var4 var3 var2 var1 var0 var6 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (inv_main65 var5 var4 var3 var2 var1 var0 var6 ) ) (inv_main66 var5 var4 var3 var2 var1 var0 var6 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (inv_main66 var5 var4 var3 var2 var1 var0 var6 ) ) (inv_main67 var5 var4 var3 var2 var1 var0 var6 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (inv_main67 var5 var4 var3 var2 var1 var0 var6 ) ) (inv_main68 var5 var4 var3 var2 var1 var0 var6 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (inv_main68 var5 var4 var3 var2 var1 var0 var6 ) ) (inv_main69 var5 var4 var3 var2 var1 var0 var6 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (inv_main69 var5 var4 var3 var2 var1 var0 var6 ) ) (inv_main70 var5 var4 var3 var2 var1 var0 var6 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (inv_main70 var5 var4 var3 var2 var1 var0 var6 ) ) (inv_main71 var5 var4 var3 var2 var1 var0 var6 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main9 var5 var4 var3 var2 var1 var0 var6 ) (and (<= 0 (+ 5 (* (- 1) var2 ) ) ) (and (<= 0 (+ var2 5 ) ) (and (= (+ (* 2 var2 ) (* (- 1) var4 ) ) var0 ) (and (<= 0 (+ var4 (* (- 1) var0 ) ) ) (and (<= 0 (+ 5 (* (- 1) var4 ) ) ) (<= 0 var0 ) ) ) ) ) ) ) ) (inv_main29 100 var4 75 var2 (- 50) var0 0 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (or (not (and (inv_main29 var6 var5 var4 var2 var1 var0 var7 ) (= var3 0 ) ) ) (inv_main32 var6 var5 var4 var2 var1 var0 var7 ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (or (not (and (inv_main29 var7 var6 var5 var4 var3 var1 var8 ) (and (<= 0 (+ (+ (* 2 var5 ) (* (- 1) var7 ) ) (* (- 1) var3 ) ) ) (and (not (= var0 0 ) ) (and (<= 0 (+ 5 (* (- 1) var4 ) ) ) (and (<= 0 (+ var4 5 ) ) (not (= var2 0 ) ) ) ) ) ) ) ) (inv_main29 (+ var7 var6 ) var6 (+ var5 var4 ) (+ var4 (- 1) ) (+ var3 var1 ) var1 (+ var8 1 ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (or (not (and (inv_main29 var7 var6 var5 var3 var2 var0 var8 ) (and (<= 0 (* (- 1) (+ (+ (* 2 var5 ) (* (- 1) var7 ) ) (* (- 1) var2 ) ) ) ) (and (= var4 0 ) (and (<= 0 (+ 5 (* (- 1) var3 ) ) ) (and (<= 0 (+ var3 5 ) ) (not (= var1 0 ) ) ) ) ) ) ) ) (inv_main29 (+ var7 var6 ) var6 (+ var5 var3 ) (+ var3 1 ) (+ var2 var0 ) var0 (+ var8 1 ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (not (and (inv_main32 var5 var4 var3 var2 var1 var0 var6 ) (not (<= 0 (+ 5 (* (- 1) var4 ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (not (and (inv_main64 var5 var4 var3 var2 var1 var0 var6 ) (not (<= 0 (+ (+ (* 2 var2 ) (* 2 var6 ) ) (* (- 1) (+ var4 var0 ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (not (and (inv_main65 var5 var4 var3 var2 var1 var0 var6 ) (not (<= 0 (+ (+ (* 5 var6 ) 75 ) (* (- 1) var3 ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (not (and (inv_main66 var5 var4 var3 var2 var1 var0 var6 ) (not (<= 0 (+ 6 (* (- 1) var2 ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (not (and (inv_main67 var5 var4 var3 var2 var1 var0 var6 ) (not (<= 0 var0 ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (not (and (inv_main68 var5 var4 var3 var2 var1 var0 var6 ) (not (<= 0 (+ var2 6 ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (not (and (inv_main69 var5 var4 var3 var2 var1 var0 var6 ) (not (<= 0 (+ (+ var3 (* 5 var6 ) ) (- 75) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (not (and (inv_main70 var5 var4 var3 var2 var1 var0 var6 ) (not (<= 0 (+ (+ (+ var4 (* (- 2) var2 ) ) var0 ) (* 2 var6 ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (not (and (inv_main71 var5 var4 var3 var2 var1 var0 var6 ) (not (<= 0 (+ var4 (* (- 1) var0 ) ) ) ) ) ) ) ) ) ) ) ) ) )
(check-sat)