(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main15 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main25 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main8 (Int Int Int Int Int Int) Bool)
(assert (inv_main8 1 1 2 2 3 3 ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main8 var3 var1 var5 var0 var6 var2 ) (and (not (exists ((var7 Int)) (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var7 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var7 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var7 (- 1) ) ) ) (<= 0 (+ (+ (+ var3 var5 ) (+ var1 var0 ) ) (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var7 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) (+ (+ var3 var5 ) (+ var1 var0 ) ) ) (- 1) ) ) ) ) (exists ((var8 Int)) (= (+ (+ var3 var5 ) (+ var1 var0 ) ) (+ (* 2 var8 ) var7 ) ) ) ) (= var7 0 ) ) ) ) (not (= var4 0 ) ) ) ) ) (inv_main15 (+ var3 (- 1) ) var1 var5 var0 (+ var3 var5 ) (+ var1 var0 ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main8 var3 var1 var5 var0 var6 var2 ) (and (forall ((var7 Int)) (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var7 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var7 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var7 (- 1) ) ) ) (<= 0 (+ (+ (+ var3 var5 ) (+ var1 var0 ) ) (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var7 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) (+ (+ var3 var5 ) (+ var1 var0 ) ) ) (- 1) ) ) ) ) (exists ((var8 Int)) (= (+ (+ var3 var5 ) (+ var1 var0 ) ) (+ (* 2 var8 ) var7 ) ) ) ) ) (= var7 0 ) ) ) (not (= var4 0 ) ) ) ) ) (inv_main15 (+ var3 1 ) var1 var5 (+ var0 1 ) (+ var3 var5 ) (+ var1 var0 ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main15 var4 var1 var5 var0 var6 var2 ) (= var3 0 ) ) ) (inv_main8 var4 var1 var5 var0 var6 var2 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main15 var3 var1 var4 var0 var6 var2 ) (not (= var5 0 ) ) ) ) (inv_main15 var3 (+ var1 (- 1) ) (+ var4 (- 1) ) var0 var6 var2 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main8 var4 var2 var5 var0 var6 var3 ) (and (not (= (+ var4 var5 ) (+ var2 var0 ) ) ) (= var1 0 ) ) ) ) (inv_main25 var4 var2 var5 var0 var6 var3 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (not (inv_main25 var3 var1 var4 var0 var5 var2 ) ) ) ) ) ) ) ) )
(check-sat)
