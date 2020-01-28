(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main23 (Int Int Int Int Int) Bool)
(declare-fun inv_main26 (Int Int Int Int Int) Bool)
(declare-fun inv_main7 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (inv_main7 var2 var1 var4 var3 var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main7 var0 var3 var2 var1 var4 ) (and (<= 0 (* (- 1) (+ (+ (* 2 var3 ) (* (- 1) var0 ) ) (- 1) ) ) ) (and (<= 0 (+ (* 2 var3 ) (* (- 1) var0 ) ) ) (and (= (+ var4 (* (- 2) var3 ) ) 0 ) (and (= var1 var3 ) (and (= var2 var0 ) (<= 0 (+ var0 (- 2) ) ) ) ) ) ) ) ) ) (inv_main23 var0 var3 var2 var1 var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main23 var0 var4 var3 var2 var5 ) (= var1 0 ) ) ) (inv_main26 var0 var4 var3 var2 var5 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main23 var1 var5 var4 var3 var6 ) (and (<= 0 (+ (+ var4 (* (- 1) var6 ) ) (- 1) ) ) (and (not (= var2 0 ) ) (not (= var0 0 ) ) ) ) ) ) (inv_main23 var1 var5 var4 (+ var6 1 ) (+ (* 2 var6 ) 2 ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (or (not (and (inv_main23 var1 var6 var5 var4 var7 ) (and (<= 0 (* (- 1) (+ var7 (* (- 1) var5 ) ) ) ) (and (not (= var3 0 ) ) (and (= var2 0 ) (not (= var0 0 ) ) ) ) ) ) ) (inv_main23 var1 var6 var5 var7 (* 2 var7 ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (or (not (and (inv_main23 var1 var7 var5 var4 var8 ) (and (<= 0 (+ var5 (- 2) ) ) (and (<= 0 (+ var7 (- 2) ) ) (and (not (= var3 0 ) ) (and (= var6 0 ) (and (= var2 0 ) (not (= var0 0 ) ) ) ) ) ) ) ) ) (inv_main23 var1 (+ var7 (- 1) ) var5 (+ var7 (- 1) ) (+ (* 2 var7 ) (- 2) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (or (not (and (inv_main23 var1 var6 var4 var3 var7 ) (and (<= 0 (+ (+ var4 (- 1) ) (- 3) ) ) (and (<= 0 (+ 1 (* (- 1) var6 ) ) ) (and (= var8 0 ) (and (= var5 0 ) (and (= var2 0 ) (not (= var0 0 ) ) ) ) ) ) ) ) ) (inv_main23 var1 var6 (+ var4 (- 1) ) var6 (* 2 var6 ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (not (and (inv_main26 var0 var3 var2 var1 var4 ) (not (<= 0 (+ (+ (* (- 2) var3 ) var2 ) 1 ) ) ) ) ) ) ) ) ) ) )
(check-sat)
