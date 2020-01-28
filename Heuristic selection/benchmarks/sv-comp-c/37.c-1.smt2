(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main16 (Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int) Bool)
(assert (forall ((var0 Int)) (inv_main4 var0 0 0 ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main4 var0 var2 var1 ) (and (not (and (<= 0 var1 ) (<= 0 (+ (+ var0 (* (- 1) var1 ) ) (- 1) ) ) ) ) (and (<= 0 (+ var0 (- 1) ) ) (not (<= 0 (+ (+ var0 (* (- 1) var2 ) ) (- 1) ) ) ) ) ) ) ) (inv_main16 var0 var2 var1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main4 var1 var3 var2 ) (and (not (= var0 0 ) ) (<= 0 (+ (+ var1 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) (inv_main4 var1 (+ var3 1 ) var3 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main4 var0 var3 var2 ) (and (= var1 0 ) (<= 0 (+ (+ var0 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) (inv_main4 var0 (+ var3 1 ) var2 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (not (inv_main16 var0 var2 var1 ) ) ) ) ) )
(check-sat)
