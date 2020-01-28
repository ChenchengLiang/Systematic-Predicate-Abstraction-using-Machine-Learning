(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main5 (Int Int Int Int Int) Bool)
(declare-fun inv_main6 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (inv_main5 var0 0 0 0 0 ) ) )
(assert true )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main5 var4 var1 var0 var2 var3 ) (and (not (<= 0 (+ (+ var4 (* (- 1) var0 ) ) (- 1) ) ) ) (not (<= 0 (+ (+ (+ var4 var4 ) (* (- 1) var1 ) ) (- 1) ) ) ) ) ) ) (inv_main5 var4 var1 var0 var2 var3 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main5 var4 var1 var0 var2 var3 ) (and (<= 0 (+ (+ var4 (* (- 1) var0 ) ) (- 1) ) ) (not (<= 0 (+ (+ (+ var4 var4 ) (* (- 1) var1 ) ) (- 1) ) ) ) ) ) ) (inv_main5 var4 var1 (+ var0 1 ) var2 (+ var3 2 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main5 var4 var1 var0 var2 var3 ) (and (not (<= 0 (+ (+ var4 (* (- 1) var0 ) ) (- 1) ) ) ) (<= 0 (+ (+ (+ var4 var4 ) (* (- 1) var1 ) ) (- 1) ) ) ) ) ) (inv_main5 var4 (+ var1 1 ) var0 (+ var2 1 ) var3 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main5 var4 var1 var0 var2 var3 ) (and (<= 0 (+ (+ var4 (* (- 1) var0 ) ) (- 1) ) ) (<= 0 (+ (+ (+ var4 var4 ) (* (- 1) var1 ) ) (- 1) ) ) ) ) ) (inv_main5 var4 (+ var1 1 ) (+ var0 1 ) (+ var2 1 ) (+ var3 2 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (not (and (inv_main6 var4 var1 var0 var2 var3 ) (not (= var2 var3 ) ) ) ) ) ) ) ) ) )
(check-sat)
