(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main10 (Int Int Int Int Int) Bool)
(declare-fun inv_main11 (Int Int Int Int Int) Bool)
(declare-fun inv_main15 (Int Int Int Int Int) Bool)
(declare-fun inv_main3 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (inv_main3 0 var3 var2 var1 var0 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main10 var4 var2 var3 var1 var0 ) (<= 0 (+ (+ var1 (* (- 1) var2 ) ) (- 1) ) ) ) ) (inv_main11 var4 var2 var3 var1 var0 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (inv_main11 var4 var2 var3 var1 var0 ) ) (inv_main10 var4 (+ var2 1 ) var3 var1 var0 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main10 var4 var2 var3 var1 var0 ) (and (not (= var4 0 ) ) (not (<= 0 (+ (+ var1 (* (- 1) var2 ) ) (- 1) ) ) ) ) ) ) (inv_main15 var4 var0 var3 var1 var0 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main15 var4 var2 var3 var1 var0 ) (<= 0 (+ (+ var1 (* (- 1) var2 ) ) (- 1) ) ) ) ) (inv_main15 var4 (+ var2 1 ) var3 var1 var0 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main3 var4 var2 var3 var1 var0 ) (and (<= 0 (+ (+ var1 (- 1) ) (- 1) ) ) (<= 0 (+ var0 (- 1) ) ) ) ) ) (inv_main10 var4 var0 1 var1 var0 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main15 var4 var2 var3 var1 var0 ) (and (<= 0 (+ (+ var1 (* (- 1) (+ var3 1 ) ) ) (- 1) ) ) (not (<= 0 (+ (+ var1 (* (- 1) var2 ) ) (- 1) ) ) ) ) ) ) (inv_main10 var4 var0 (+ var3 1 ) var1 var0 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main10 var4 var2 var3 var1 var0 ) (and (<= 0 (+ (+ var1 (* (- 1) (+ var3 1 ) ) ) (- 1) ) ) (and (= var4 0 ) (not (<= 0 (+ (+ var1 (* (- 1) var2 ) ) (- 1) ) ) ) ) ) ) ) (inv_main10 var4 var0 (+ var3 1 ) var1 var0 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (not (and (inv_main11 var4 var2 var3 var1 var0 ) (not (<= 0 (+ var2 (- 1) ) ) ) ) ) ) ) ) ) ) )
(check-sat)
