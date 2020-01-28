(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main10 (Int Int Int Int Int) Bool)
(declare-fun inv_main14 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main18 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main21 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main25 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int Int) Bool)
(declare-fun inv_main6 (Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (inv_main5 var1 var0 0 0 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (inv_main5 var0 var3 var1 var2 ) ) (inv_main6 var0 var3 var1 var2 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (inv_main18 var0 var5 var3 var4 var2 var1 ) ) (inv_main18 var0 var5 var3 var4 var2 var1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (inv_main25 var0 var6 var3 var5 var2 var1 var4 ) ) (inv_main25 var0 var6 var3 var5 var2 var1 var4 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main21 var0 var6 var3 var5 var2 var1 var4 ) (and (<= 0 (* (- 1) var5 ) ) (<= 0 (+ (+ var0 (* (- 1) var4 ) ) (- 1) ) ) ) ) ) (inv_main25 var0 var6 var3 var5 var2 var1 var4 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main21 var0 var6 var3 var5 var2 var1 var4 ) (and (not (<= 0 (* (- 1) var5 ) ) ) (<= 0 (+ (+ var0 (* (- 1) var4 ) ) (- 1) ) ) ) ) ) (inv_main21 var0 var6 var3 (+ var5 (- 1) ) var2 var1 (+ var4 1 ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main14 var0 var5 var3 var4 var2 var1 ) (and (<= 0 (* (- 1) var4 ) ) (<= 0 (+ (+ var5 (* (- 1) var1 ) ) (- 1) ) ) ) ) ) (inv_main18 var0 var5 var3 var4 var2 var1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main14 var0 var5 var3 var4 var2 var1 ) (not (<= 0 (+ (+ var5 (* (- 1) var1 ) ) (- 1) ) ) ) ) ) (inv_main21 var0 var5 var3 var4 var2 var1 0 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main14 var0 var5 var3 var4 var2 var1 ) (and (not (<= 0 (* (- 1) var4 ) ) ) (<= 0 (+ (+ var5 (* (- 1) var1 ) ) (- 1) ) ) ) ) ) (inv_main14 var0 var5 var3 (+ var4 (- 1) ) var2 (+ var1 1 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main10 var0 var4 var2 var3 var1 ) (not (<= 0 (+ (+ var4 (* (- 1) var1 ) ) (- 1) ) ) ) ) ) (inv_main14 var0 var4 var2 var3 var1 0 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main10 var0 var4 var2 var3 var1 ) (<= 0 (+ (+ var4 (* (- 1) var1 ) ) (- 1) ) ) ) ) (inv_main10 var0 var4 var2 (+ var3 1 ) (+ var1 1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main6 var0 var3 var1 var2 ) (not (<= 0 (+ (+ var0 (* (- 1) var1 ) ) (- 1) ) ) ) ) ) (inv_main10 var0 var3 var1 var2 0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main6 var0 var3 var1 var2 ) (<= 0 (+ (+ var0 (* (- 1) var1 ) ) (- 1) ) ) ) ) (inv_main6 var0 var3 (+ var1 1 ) (+ var2 1 ) ) ) ) ) ) ) )
(check-sat)
