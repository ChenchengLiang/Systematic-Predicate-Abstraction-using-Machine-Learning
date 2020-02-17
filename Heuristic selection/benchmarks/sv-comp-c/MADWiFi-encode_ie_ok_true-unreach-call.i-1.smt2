(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main42 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main44 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main8 (Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (inv_main8 var4 var0 var1 var5 var2 var3 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (inv_main42 var1 var0 var3 var5 var4 var2 ) ) (inv_main44 var1 var0 var3 var5 var4 var2 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (or (not (and (inv_main8 var1 var0 var3 var7 var5 var2 ) (and (and (<= 0 (+ var8 (- 1) ) ) (<= 0 (+ (+ (+ var4 (* (- 1) var6 ) ) (- 2) ) (- 1) ) ) ) (and (not (<= 0 (+ (+ (* 2 var8 ) (* (- 1) (+ var4 (* (- 1) var6 ) ) ) ) (- 1) ) ) ) (and (not (<= 0 (+ (+ var6 (* (- 1) var4 ) ) (- 1) ) ) ) (and (<= 0 (+ var8 (- 1) ) ) (and (<= 0 (+ var4 (- 1) ) ) (and (<= 0 (+ var6 (- 1) ) ) (and (<= 0 (+ (+ 1000000 (* (- 1) var8 ) ) (- 1) ) ) (and (<= 0 (+ (+ 1000000 (* (- 1) var4 ) ) (- 1) ) ) (<= 0 (+ (+ 1000000 (* (- 1) var6 ) ) (- 1) ) ) ) ) ) ) ) ) ) ) ) ) (inv_main42 var6 0 var6 (+ var4 (* (- 1) var6 ) ) var4 var8 ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main44 var1 var0 var3 var5 var4 var2 ) (and (<= 0 (+ (+ var2 (* (- 1) (+ var0 1 ) ) ) (- 1) ) ) (<= 0 (+ (+ var5 (- 2) ) (- 1) ) ) ) ) ) (inv_main42 (+ var1 2 ) (+ var0 1 ) var3 var5 var4 var2 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (not (and (inv_main42 var1 var0 var3 var5 var4 var2 ) (not (<= 0 var1 ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (not (and (inv_main44 var1 var0 var3 var5 var4 var2 ) (not (<= 0 (+ (+ var4 (* (- 1) (+ var1 1 ) ) ) (- 1) ) ) ) ) ) ) ) ) ) ) ) )
(check-sat)