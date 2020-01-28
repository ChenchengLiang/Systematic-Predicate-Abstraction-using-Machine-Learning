(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main11 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main15 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main3 (Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (inv_main3 0 var3 var4 var0 var2 var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main3 var2 var4 var5 var3 var1 var0 ) (and (<= 0 (+ var1 (- 1) ) ) (<= 0 (+ var0 (* (- 1) var1 ) ) ) ) ) ) (inv_main11 var2 0 0 var3 var1 var0 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main11 var2 var4 var5 var3 var1 var0 ) (and (<= 0 (+ (+ var1 (* (- 1) (+ var4 1 ) ) ) (- 1) ) ) (not (<= 0 (+ (+ var1 (* (- 1) var5 ) ) (- 1) ) ) ) ) ) ) (inv_main11 var2 (+ var4 1 ) 0 var3 var1 var0 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main11 var2 var4 var5 var3 var1 var0 ) (and (<= 0 (+ (+ (+ var1 var0 ) (* (- 1) var5 ) ) (- 1) ) ) (<= 0 (+ (+ var1 (* (- 1) var5 ) ) (- 1) ) ) ) ) ) (inv_main15 var2 var4 var5 var5 var1 var0 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main11 var2 var4 var5 var3 var1 var0 ) (and (not (<= 0 (+ (+ (+ var1 var0 ) (* (- 1) var5 ) ) (- 1) ) ) ) (<= 0 (+ (+ var1 (* (- 1) var5 ) ) (- 1) ) ) ) ) ) (inv_main11 var2 var4 (+ var5 1 ) var5 var1 var0 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main15 var2 var4 var5 var3 var1 var0 ) (<= 0 (+ (+ (+ var1 var0 ) (* (- 1) (+ var3 1 ) ) ) (- 1) ) ) ) ) (inv_main15 var2 var4 var5 (+ var3 1 ) var1 var0 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main15 var2 var4 var5 var3 var1 var0 ) (not (<= 0 (+ (+ (+ var1 var0 ) (* (- 1) (+ var3 1 ) ) ) (- 1) ) ) ) ) ) (inv_main11 var2 var4 (+ var5 1 ) (+ var3 1 ) var1 var0 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (not (and (inv_main15 var2 var4 var5 var3 var1 var0 ) (not (<= 0 (+ (+ (+ var1 var3 ) var0 ) (* (- 1) (+ var4 var5 ) ) ) ) ) ) ) ) ) ) ) ) ) )
(check-sat)
