(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main15 (Int Int Int) Bool)
(declare-fun inv_main4 (Int Int) Bool)
(declare-fun inv_main7 (Int Int Int) Bool)
(declare-fun inv_main8 (Int Int Int) Bool)
(assert (inv_main4 0 0 ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main7 var0 var2 var1 ) (not (<= 0 (+ (+ var1 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main8 var0 var2 var1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (inv_main8 var0 var2 var1 ) ) (inv_main15 var0 var2 var1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main7 var0 var3 var1 ) (and (not (= var2 0 ) ) (<= 0 (+ (+ var1 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main7 (+ var0 1 ) var0 var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main7 var0 var3 var1 ) (and (= var2 0 ) (<= 0 (+ (+ var1 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main7 (+ var0 1 ) var3 var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (inv_main4 var0 var2 ) ) (inv_main7 var0 var2 var1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (not (and (inv_main8 var0 var2 var1 ) (and (not (<= 0 var2 ) ) (not (<= 0 (* (- 1) var1 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (not (and (inv_main15 var0 var2 var1 ) (and (not (<= 0 (+ (+ var1 (* (- 1) var2 ) ) (- 1) ) ) ) (not (<= 0 (* (- 1) var1 ) ) ) ) ) ) ) ) ) )
(check-sat)